package com.example.repository;

import com.example.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserEntityRepository extends JpaRepository<UserEntity, Long> {


    Optional<UserEntity> findById(Long id);

    List<UserEntity> findAll();

    UserEntity save(UserEntity user);
}
