package com.example.controller;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.StrUtil;
import com.example.common.Result;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.Comparator;
import java.util.List;

/**
 * @date 2021/3/17 10:16
 * @description 文件上传
 */
@RestController
@RequestMapping("/files")
public class FileController {

    @PostMapping("/upload")
    public Result<?> upload(HttpServletRequest request) {
        List<MultipartFile> files = ((MultipartHttpServletRequest) request).getFiles("file");
        String filePath = System.getProperty("user.dir") + "/src/main/resources/static/file/";
        for (MultipartFile file : files) {
            if (file.isEmpty()) {
                continue;
            }
            String fileName = file.getOriginalFilename();
            try {
                FileUtil.writeBytes(file.getBytes(), filePath + fileName);
                System.out.println(fileName + "--上传成功");

            } catch (IOException e) {
                System.err.println(fileName + "--文件上传失败");
            }
        }
        return Result.success();
    }

    /**
     * 头像上传
     *
     * @param file
     * @return
     */
    @PostMapping("/avatar")
    public Result<String> avatarUpload(MultipartFile file) {
        String originalFilename = file.getOriginalFilename();
        String baseFilePath = System.getProperty("user.dir") + "/src/main/resources/static/file/";
        String fileName = "avatar-" + System.currentTimeMillis();
        String filePath = baseFilePath + "avatar-" + System.currentTimeMillis() + "." + FileUtil.extName(originalFilename);
        try {
            file.transferTo(new File(filePath));
            System.out.println("头像上传成功");
        } catch (IOException e) {
            System.err.println("头像上传失败");
        }
        return Result.success(fileName);
    }

    @GetMapping("/avatar")
    public void avatarPath(HttpServletResponse response) {
        OutputStream os;
        String basePath = System.getProperty("user.dir") + "/src/main/resources/static/file/";
        List<String> fileNames = FileUtil.listFileNames(basePath);
        String avatar = fileNames.stream().filter(name -> name.contains("avatar")).max(Comparator.naturalOrder()).orElse("");
        try {
            if (StrUtil.isNotEmpty(avatar)) {
                response.addHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(avatar, "UTF-8"));
                response.setContentType("application/octet-stream");
                byte[] bytes = FileUtil.readBytes(basePath + avatar);
                os = response.getOutputStream();
                os.write(bytes);
                os.flush();
                os.close();
            }
        } catch (Exception e) {
            System.out.println("文件下载失败");
        }
    }
}
