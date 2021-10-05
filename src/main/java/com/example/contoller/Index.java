package com.example.contoller;

import com.example.model.AboutEntity;
import com.example.model.IndexEntity;
import com.example.repository.IndexRepository;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class Index {

    private final IndexRepository indexRepository;

    public Index(IndexRepository mainRepository) {
        this.indexRepository = mainRepository;
    }

    @RequestMapping(value = {"/", "/index"}, method = RequestMethod.GET)
    public String getIndex(Model model) {
        List<IndexEntity> indexList = indexRepository.findAll();
        model.addAttribute("index", indexList);
        return "index";
    }

    @RequestMapping(value = {"/editIndex/{id}"}, method = RequestMethod.GET)
    public String getEditIndex(Model model, @PathVariable("id") Long id) {
        IndexEntity indexEntity = indexRepository.findById(id);
        model.addAttribute("index", indexEntity);
        return "/editIndex";
    }

    @RequestMapping(value = {"/editIndex/{id}"}, method = RequestMethod.POST)
    public RedirectView postEditIndex(@ModelAttribute IndexEntity indexEntity, @PathVariable("id") Long id) {
        indexRepository.save(indexEntity);
        return new RedirectView("/index");
    }


}
