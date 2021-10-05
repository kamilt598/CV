package com.example.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Entity
public class AboutEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;
    private String website;
    private String phone;
    private String city;
    private String age;
    private String degree;
    private String email;
    private String freelance;
    @Column(length = 300)
    private String firstDescription;
    @Column(length = 500)
    private String secondDescription;
    @Column(length = 50)
    private String title;
    @Column(length = 150)
    private String titleDescription;
    private String image;


    public AboutEntity() {
    }

    public AboutEntity(Long id, Date birthday, String website, String phone, String city, String age, String degree, String email, String freelance, String firstDescription, String secondDescription, String title, String titleDescription, String image) {
        this.id = id;
        this.birthday = birthday;
        this.website = website;
        this.phone = phone;
        this.city = city;
        this.age = age;
        this.degree = degree;
        this.email = email;
        this.freelance = freelance;
        this.firstDescription = firstDescription;
        this.secondDescription = secondDescription;
        this.title = title;
        this.titleDescription = titleDescription;
        this.image = image;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFreelance() {
        return freelance;
    }

    public void setFreelance(String freelance) {
        this.freelance = freelance;
    }

    public String getFirstDescription() {
        return firstDescription;
    }

    public void setFirstDescription(String firstDescription) {
        this.firstDescription = firstDescription;
    }

    public String getSecondDescription() {
        return secondDescription;
    }

    public void setSecondDescription(String secondDescription) {
        this.secondDescription = secondDescription;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitleDescription() {
        return titleDescription;
    }

    public void setTitleDescription(String titleDescription) {
        this.titleDescription = titleDescription;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
