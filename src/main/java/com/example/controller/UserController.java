package com.example.controller;

import com.example.common.Result;
import com.example.entity.User;
import com.example.exception.CustomException;
import com.example.service.UserService;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserService userService;

    /**
     * 登陆
     * @param user
     * @param request
     * @return
     */
    @PostMapping("/login")
    public Result<User> login(@RequestBody User user, HttpServletRequest request) {
        User res = userService.login(user);
        request.getSession().setAttribute("user", res);
        return Result.success(res);
    }

    /**
     * 注册
     * @param user
     * @param request
     * @return
     */
    @PostMapping("/register")
    public Result<User> register(@RequestBody User user, HttpServletRequest request) {
        User dbUser = userService.findByUsername(user.getUsername());
        if (dbUser!= null) {
            throw new CustomException("-1", "用户已注册");
        }
        User res = userService.add(user);
        request.getSession().setAttribute("user", res);
        return Result.success(res);
    }

    @PostMapping
    public Result<User> save(@RequestBody User user) {
        return Result.success(userService.save(user));
    }

    @PutMapping
    public Result<?> update(@RequestBody User user) {
        return Result.success(userService.save(user));
    }

    @DeleteMapping("/{id}")
    public Result<?> delete(@PathVariable Long id) {
        userService.delete(id);
        return Result.success();
    }

    @GetMapping("/{id}")
    public Result<User> findById(@PathVariable Long id) {
        return Result.success(userService.findById(id));
    }

    @GetMapping
    public Result<List<User>> findAll() {
        return Result.success(userService.findAll());
    }

    @GetMapping("/page")
    public Result<Page<User>> findPage(@RequestParam(required = false, defaultValue = "1") Integer pageNum,
                                       @RequestParam(required = false, defaultValue = "10") Integer pageSize) {
        return Result.success(userService.findPage(pageNum, pageSize));
    }
}
