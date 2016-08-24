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
import streaming.entity.Genre;
import streaming.service.GenreCrudService;

/**
 *
 * @author admin
 */
//@Controller
public class GenreController {

    @Autowired
    private GenreCrudService gCrudService;

    @RequestMapping(value = "/lister_genres", method = RequestMethod.GET)
    public String listerSeries(Model m) {
        Iterable<Genre> genres = gCrudService.findAll();
        m.addAttribute("listegenres", genres);
        //m.addAttribute("titre", "Liste des series: ");
        return "liste_genres";
    }

    //***********************************************
    @RequestMapping(value = "/ajouter_genre", method = RequestMethod.POST)
    public String ajouterGenrePOST(@ModelAttribute("genre") Genre genre) {
        gCrudService.save(genre);
        //Renvoyer vers une jsp
        return "redirect:/lister_genres";
    }

    @RequestMapping(value = "/ajouter_genre", method = RequestMethod.GET)
    public String ajouterGenresGET(Model m) {
        //Initialiser nouveau genre vide
        Genre genre = new Genre();
        //film.setTitre("Back");
        m.addAttribute("genre", genre); 
        //Renvoyer vers la jsp correspondante
        return "ajout_genre";
    }

//     @RequestMapping(value="find/{id}", method = RequestMethod.GET)
//    @ResponseBody
//    public Genre findById( @PathVariable("id") long id){
//        
//        Genre g = new Genre();
//        
//        return g;
//    }
}
