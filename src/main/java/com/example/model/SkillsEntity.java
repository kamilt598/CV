package com.example.model;

import javax.persistence.*;

@Entity
public class SkillsEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @Column(length = 300)
    private String description;
    private String html;
    private String css;
    private String javascript;
    private String php;
    private String wordpress;
    private String photoshop;

    public SkillsEntity() {
    }

    public SkillsEntity(Long id, String description, String html, String css, String javascript, String php, String wordpress, String photoshop) {
        this.id = id;
        this.description = description;
        this.html = html;
        this.css = css;
        this.javascript = javascript;
        this.php = php;
        this.wordpress = wordpress;
        this.photoshop = photoshop;
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

    public String getHtml() {
        return html;
    }

    public void setHtml(String html) {
        this.html = html;
    }

    public String getCss() {
        return css;
    }

    public void setCss(String css) {
        this.css = css;
    }

    public String getJavascript() {
        return javascript;
    }

    public void setJavascript(String javascript) {
        this.javascript = javascript;
    }

    public String getPhp() {
        return php;
    }

    public void setPhp(String php) {
        this.php = php;
    }

    public String getWordpress() {
        return wordpress;
    }

    public void setWordpress(String wordpress) {
        this.wordpress = wordpress;
    }

    public String getPhotoshop() {
        return photoshop;
    }

    public void setPhotoshop(String photoshop) {
        this.photoshop = photoshop;
    }
}
