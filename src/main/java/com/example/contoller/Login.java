package com.example.contoller;

import com.example.DTO.UserDto;
import com.example.converter.UserConverter;
import com.example.model.UserEntity;
import com.example.repository.UserEntityRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class Login {

    private final UserEntityRepository userEntityRepository;
    private final UserConverter userConverter;
    private final PasswordEncoder passwordEncoder;

    public Login(UserEntityRepository userEntityRepository, UserConverter userConverter, PasswordEncoder passwordEncoder) {
        this.userEntityRepository = userEntityRepository;
        this.userConverter = userConverter;
        this.passwordEncoder = passwordEncoder;
    }

    @RequestMapping(value = {"/login"}, method = RequestMethod.GET)
    public String getLogin() {
        return "login";
    }

    @RequestMapping(value = {"/login"}, method = RequestMethod.POST)
    public String postLogin() {
        return "login";
    }

    @RequestMapping(value = {"/register"}, method = RequestMethod.GET)
    public String getRegister() { return "register"; }

    @RequestMapping(value = {"/register"}, method = RequestMethod.POST)
    public RedirectView registerUser(@ModelAttribute UserDto userDto) {
        UserEntity user = userConverter.dtoToEntity(userDto);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userEntityRepository.save(user);
        return new RedirectView("/login");
    }
}
