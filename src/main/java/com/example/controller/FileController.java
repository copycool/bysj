package com.example.controller;

import cn.hutool.core.io.FileUtil;
import com.example.common.Result;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
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
    public Result<?> avatarUpload(MultipartFile file) {
        String fileName = file.getOriginalFilename();
        String baseFilePath = System.getProperty("user.dir") + "/src/main/resources/static/file/";
        String filePath = baseFilePath + "avatar-" + System.currentTimeMillis() + "." + FileUtil.extName(fileName);
        try {
            FileUtil.writeBytes(file.getBytes(), filePath);
            System.out.println("头像上传成功");
        } catch (IOException e) {
            System.err.println("头像上传失败");
        }
        return Result.success();
    }

    @GetMapping("/avatar")
    public Result<String> avatarPath() {
        List<String> fileNames = FileUtil.listFileNames(System.getProperty("user.dir") + "/src/main/resources/static/file/");
        return Result.success("file/" + fileNames.stream().filter(name -> name.contains("avatar")).max(Comparator.naturalOrder()).orElse(""));
    }
}
