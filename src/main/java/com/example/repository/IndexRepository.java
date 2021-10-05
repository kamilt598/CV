package com.example.repository;

import com.example.model.IndexEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IndexRepository extends JpaRepository<IndexEntity, Long> {

    IndexEntity save(IndexEntity mainEntity);
    IndexEntity findById(Long id);
    List<IndexEntity> findAll();

}
