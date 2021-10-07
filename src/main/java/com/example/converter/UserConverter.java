package com.example.converter;

import com.example.DTO.UserDto;
import com.example.model.UserEntity;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class UserConverter {

    public UserDto entityToDto(UserEntity userEntity) {
        UserDto userDto = new UserDto();
        userDto.setId(userEntity.getId());
        userDto.setUsername(userEntity.getUsername());
        userDto.setPassword(userEntity.getPassword());
        return userDto;
    }

    public List<UserDto> entityToDto(List<UserEntity> users) {
        return users.stream()
                .map(x -> entityToDto(x))
                .collect(Collectors.toList());
    }

    public UserEntity dtoToEntity(UserDto userDto) {
        UserEntity userEntity = new UserEntity();
        userEntity.setId(userDto.getId());
        userEntity.setUsername(userDto.getUsername());
        userEntity.setPassword(userDto.getPassword());
        return userEntity;
    }

    public List<UserEntity> dtoToEntity(List<UserDto> usersDto) {
        return usersDto.stream()
                .map(x -> dtoToEntity(x))
                .collect(Collectors.toList());
    }
}
