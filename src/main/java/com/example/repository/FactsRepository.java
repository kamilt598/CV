package com.example.repository;

import com.example.model.FactsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FactsRepository extends JpaRepository<FactsEntity, Long> {

    FactsEntity save(FactsEntity factsEntity);
    List<FactsEntity> findAll();
}
