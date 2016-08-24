/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import streaming.entity.Film;
import streaming.service.FilmCrudService;

/**
 *
 * @author tom
 */
//@Controller

public class FilmController {
    
    @Autowired
    private FilmCrudService fCrudService;
   
    @RequestMapping(value="/ajouter_films", method = RequestMethod.POST)
    public String ajouterFilmsPOST( @ModelAttribute("film") Film film){
        fCrudService.save(film);
        //Renvoyer vers une jsp
        return "redirect:/liste_films";
    }
    //*****************************************************************
    @RequestMapping(value="/ajouter_films", method = RequestMethod.GET)
    public String ajouterFilmsGET(Model m){
        //Initialiser nouveau film vide
        Film film = new Film();
        //film.setTitre("Back");
        m.addAttribute("film", film);
        //Renvoyer vers la jsp correspondante
        return "ajout_films";
    }
     //*****************************************************************
    @RequestMapping(value="/liste_films", method = RequestMethod.GET)
    public String listerFilms(Model m){
        Iterable<Film> films = fCrudService.findAll();
        m.addAttribute("listefilms", films);
        m.addAttribute("titre", "Liste de films: ");
        return "liste_films";
    }
     //*****************************************************************
    @RequestMapping(value="find/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Film findById( @PathVariable("id") long id){
        
        Film f = new Film(1L, "Karate Kid", "blabla", 1989L, null);
        
        return f;
    }
}
