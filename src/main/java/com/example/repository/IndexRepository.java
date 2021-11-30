package com.example.repository;

import com.example.model.AboutEntity;
import com.example.model.IndexEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface IndexRepository extends JpaRepository<IndexEntity, Long> {

    IndexEntity save(IndexEntity mainEntity);
    List<IndexEntity> findAll();

}
