package services;

import com.example.DTO.UserDto;
import com.example.converter.UserConverter;
import com.example.model.UserEntity;
import com.example.repository.UserEntityRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserServices {

    private final UserEntityRepository userEntityRepository;
    private final UserConverter userConverter;
    private final PasswordEncoder passwordEncoder;

    public UserServices(UserEntityRepository userEntityRepository, UserConverter userConverter, PasswordEncoder passwordEncoder) {
        this.userEntityRepository = userEntityRepository;
        this.userConverter = userConverter;
        this.passwordEncoder = passwordEncoder;
    }

    public UserDto getUser(Long id) {
        return userConverter.entityToDto(userEntityRepository.findById(id).orElse(null));
    }

    public void addUserPost(UserDto userDto) {
        UserEntity user = userConverter.dtoToEntity(userDto);
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userEntityRepository.save(user);
    }
}
