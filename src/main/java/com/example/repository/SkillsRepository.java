package com.example.repository;

import com.example.model.AboutEntity;
import com.example.model.SkillsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface SkillsRepository extends JpaRepository<SkillsEntity, Long> {

    SkillsEntity save(SkillsEntity skillsEntity);
    List<SkillsEntity> findAll();

}
