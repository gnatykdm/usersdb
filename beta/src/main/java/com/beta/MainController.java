package com.beta;

import com.beta.service.IUserService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import com.beta.model.entity.UserEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class MainController {

    @Autowired
    private IUserService userService;

    @GetMapping("/show")
    public String show(Model model) {
        List<UserEntity> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "show";
    }

    @GetMapping("/add")
    public String add(Model model) {
        UserEntity user = new UserEntity();
        model.addAttribute("user", user);
        return "add";
    }

    @GetMapping("/result")
    public String result(@ModelAttribute("user") UserEntity user) {
        userService.registerUser(user);
        return "result";
    }

    @GetMapping("/delete")
    public String delete() {
        return "delete";
    }

    @GetMapping("/deleteresult")
    public String deleteresult(HttpServletRequest request) {
        Integer userId = Integer.parseInt(request.getParameter("userId"));
        userService.dropUser(userId);
        return "deleteresult";
    }
}
