package com.example.repository;

import com.example.contoller.About;
import com.example.model.AboutEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AboutRepository extends JpaRepository<AboutEntity, Long> {

    AboutEntity save(AboutEntity aboutEntity);
    AboutEntity findById(Long id);
    List<AboutEntity> findAll();
}
