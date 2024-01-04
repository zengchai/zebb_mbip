package com.utm.ip.zebb.serverController;

import java.util.List;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Objects;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/competitionUser")
public class winnerController {

    @Autowired
    JdbcTemplate template;

    @RequestMapping("/")
    ModelAndView viewHome() {
        final List<String> result = new ArrayList<String>();
        // result.add("It's working");
        ModelAndView mv = new ModelAndView("competitionUser");
        // mv.addObject("title", "Home");
        // mv.addObject("result", result);
        return mv;
    }

    @RequestMapping("/insert")
    ModelAndView insert() {
        ModelAndView mv = new ModelAndView("competitionUser");
        //mv.addObject("title", "Insert a record");
        final List<String> result = new ArrayList<String>();
        String sql = "INSERT INTO winners (userName, location, water_consumption, "
                + "electricity_consumption, recycling_amount, carbon_reduction_rate) VALUES "
                + "('John Doe', 'City A', 100, 200 , 5, 20),"
                + "('Paul Logan', 'City B', 150, 230 , 4, 22),"
                + "('Dustin William', 'City C', 110, 210 , 6, 24);";
        int count = template.update(sql);
        // result.add(count + " records have been inserted");
        // mv.addObject("result", result);
        return mv;
    }
}
