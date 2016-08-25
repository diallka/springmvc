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
import streaming.dto.FilmsDTO;
import streaming.entity.Film;
import streaming.entity.Genre;
import streaming.service.FilmCrudService;
import streaming.service.GenreCrudService;

/**
 *
 * @author tom
 */
@Controller

public class FilmController {

    @Autowired //Obligatoire sinon renvoit NuLLPointException
    private FilmCrudService fCrudService;

    @Autowired //Obligatoire sinon renvoit NuLLPointException
    private GenreCrudService gCrudService;
    
    
    @RequestMapping(value = "/ajouter_3_films", method = RequestMethod.GET)
    public String ajouter3FilmsGET(Model m){
        m.addAttribute("dto", new FilmsDTO());
        return "ajout_3_films";
        
    }
    @RequestMapping(value = "/ajouter_3_films", method = RequestMethod.POST)
    public String ajouter3FilmsPOST(@ModelAttribute("dto") FilmsDTO monDTO){
        Film film1 = new Film();
        film1.setTitre(monDTO.getFilm1());
        fCrudService.save(film1);
        
        Film film2 = new Film();
        film2.setTitre(monDTO.getFilm2());
        fCrudService.save(film2);
        
        Film film3 = new Film();
        film3.setTitre(monDTO.getFilm3());
        fCrudService.save(film3);
        
        return "ajouter_3_films";
        
    }
    //***************************************************************************************
    //***************************************************************************************
    @RequestMapping(value = "/ajouter_films", method = RequestMethod.GET)
    public String ajouterFilmsGET(Model m) {
        //Initialiser nouveau film vide
        Film film = new Film();
        film.setTitre("Back");
        m.addAttribute("film", film);

        //Iterable<Genre> genres = gCrudService.findAll();
        m.addAttribute("listegenres", gCrudService.findAllByOrderByNom());

        //Renvoyer vers la jsp correspondante
        return "ajout_films";
    }

    //***************************************************************************************
    @RequestMapping(value = "/ajouter_films", method = RequestMethod.POST)
    public String ajouterFilmsPOST(@ModelAttribute("film") Film film) {
        fCrudService.save(film);
        //Renvoyer vers une jsp
        return "redirect:/lister_films";
    }

    //***************************************************************************************
    //***************************************************************************************
    @RequestMapping(value = "/lister_films", method = RequestMethod.GET)
    public String listerFilms(Model f) {
        Iterable<Film> films = fCrudService.findAll();
        f.addAttribute("listefilms", films);
        f.addAttribute("titre", "Liste de films: ");

        return "liste_films";
    }
    //***************************************************************************************
    //***************************************************************************************

    @RequestMapping(value = "/supprimer_film/{idDuFilm}", method = RequestMethod.GET)
    public String supprimerFilms(@PathVariable("idDuFilm") long idFilm) {
        fCrudService.delete(idFilm);
        return "redirect:/lister_films";
    }

    //***************************************************************************************
    //***************************************************************************************
    @RequestMapping(value = "/modifier_film/{idDuFilm}", method = RequestMethod.GET)
    public String modifierFilmGET(Model m, @PathVariable("idDuFilm") Long idFilm) {

        m.addAttribute("film", fCrudService.findOne(idFilm));
        m.addAttribute("genres", gCrudService.findAllByOrderByNom());

        return "modifer_film";
    }

    //****************************************************************************************
    @RequestMapping(value = "/modifier_film/{idDuFilm}", method = RequestMethod.POST)
    public String modifierFilmPOST(@PathVariable("idDuFilm") Long idFilm, @ModelAttribute("film") Film film) {
        film.setId(idFilm);
        fCrudService.save(film);
        //Renvoyer vers une jsp
        return "redirect:/lister_films";
    }

    //***************************************************************************************
    //***************************************************************************************
    @RequestMapping(value = "find/{id}", method = RequestMethod.GET)
    @ResponseBody
    public Film findById(@PathVariable("id") long id) {

        Film f = new Film(1L, "Karate Kid", "blabla", 1989L, null);

        return f;
    }
}
