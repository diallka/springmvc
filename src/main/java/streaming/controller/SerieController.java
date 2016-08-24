/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package streaming.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import streaming.entity.Serie;
import streaming.service.SerieCrudService;

/**
 *
 * @author admin
 */
@Controller
public class SerieController {
    
    @Autowired
    private SerieCrudService sCrudService;
    
      @RequestMapping(value="/lister_series", method = RequestMethod.GET)
    public String listerSeries(Model m){
        Iterable<Serie> series = sCrudService.findAll();
        m.addAttribute("listeseries", series);
        m.addAttribute("titre", "Liste des series: ");
        return "liste_series";
    }
    
   
   
}
