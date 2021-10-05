package com.example.contoller;

import com.example.model.AboutEntity;
import com.example.model.FactsEntity;
import com.example.model.SkillsEntity;
import com.example.repository.AboutRepository;
import com.example.repository.FactsRepository;
import com.example.repository.SkillsRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class About {

    private final AboutRepository aboutRepository;
    private final FactsRepository factsRepository;
    private final SkillsRepository skillsRepository;

    public About(AboutRepository aboutRepository, FactsRepository factsRepository, SkillsRepository skillsRepository) {
        this.aboutRepository = aboutRepository;
        this.factsRepository = factsRepository;
        this.skillsRepository = skillsRepository;
    }

    @RequestMapping(value = {"/about"}, method = RequestMethod.GET)
    public String getAbout(Model model) {
        List<AboutEntity> aboutList =aboutRepository.findAll();
        model.addAttribute("about", aboutList);
        List<FactsEntity> factsList =factsRepository.findAll();
        model.addAttribute("facts", factsList);
        List<SkillsEntity> skillsList =skillsRepository.findAll();
        model.addAttribute("skills", skillsList);
        return "about";
    }


    @RequestMapping(value = {"/editAbout/{id}"}, method = RequestMethod.GET)
    public String getEditAbout(Model model, @PathVariable("id") Long id) {
        AboutEntity aboutEntity = aboutRepository.findById(id);
        model.addAttribute("about", aboutEntity);
        return "/editAbout";
    }

    @RequestMapping(value = {"/editAbout/{id}"}, method = RequestMethod.POST)
    public RedirectView postEditAbout(@ModelAttribute AboutEntity aboutEntity, @PathVariable("id") Long id) {
        aboutRepository.save(aboutEntity);
        return new RedirectView("/about");
    }

    @RequestMapping(value = {"/editFacts/{id}"}, method = RequestMethod.GET)
    public String getEditFacts(Model model, @PathVariable("id") Long id) {
        FactsEntity factsEntity = factsRepository.findById(id);
        model.addAttribute("facts", factsEntity);
        return "/editFacts";
    }

    @RequestMapping(value = {"/editFacts/{id}"}, method = RequestMethod.POST)
    public RedirectView postEditFacts(@ModelAttribute FactsEntity factsEntity, @PathVariable("id") Long id) {
        factsRepository.save(factsEntity);
        return new RedirectView("/about");
    }

    @RequestMapping(value = {"/editSkills/{id}"}, method = RequestMethod.GET)
    public String getEditSkills(Model model, @PathVariable("id") Long id) {
        SkillsEntity skillsEntity = skillsRepository.findById(id);
        model.addAttribute("skills", skillsEntity);
        return "/editSkills";
    }

    @RequestMapping(value = {"/editSkills/{id}"}, method = RequestMethod.POST)
    public RedirectView postEditSkills(@ModelAttribute SkillsEntity skillsEntity, @PathVariable("id") Long id) {
        skillsRepository.save(skillsEntity);
        return new RedirectView("/about");
    }
}
