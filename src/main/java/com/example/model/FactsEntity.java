package com.example.model;

import javax.persistence.*;

@Entity
public class FactsEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(length = 300)
    private String description;
    private String clients;
    private String projects;
    private String hours;
    private String workers;

    public FactsEntity() {
    }

    public FactsEntity(Long id, String description, String clients, String projects, String hours, String workers) {
        this.id = id;
        this.description = description;
        this.clients = clients;
        this.projects = projects;
        this.hours = hours;
        this.workers = workers;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getClients() {
        return clients;
    }

    public void setClients(String clients) {
        this.clients = clients;
    }

    public String getProjects() {
        return projects;
    }

    public void setProjects(String projects) {
        this.projects = projects;
    }

    public String getHours() {
        return hours;
    }

    public void setHours(String hours) {
        this.hours = hours;
    }

    public String getWorkers() {
        return workers;
    }

    public void setWorkers(String workers) {
        this.workers = workers;
    }
}
