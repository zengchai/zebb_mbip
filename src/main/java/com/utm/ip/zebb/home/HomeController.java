package com.utm.ip.zebb.home;

import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
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

import com.utm.ip.zebb.model.User;

@Controller
public class HomeController {

    @Autowired
    JdbcTemplate template;

    @RequestMapping("/")
    public String greet() {
        return "/home/home";
    }

    @RequestMapping("/register")
    public String register(){
        return "/home/registration";
 }
    @RequestMapping("/registervalidation")
    ModelAndView processing(@RequestParam String username,@RequestParam String email,@RequestParam String password){
        ModelAndView mv = new ModelAndView("/editprofile");
        final List<String> result = new ArrayList<String>();
        String sql = "INSERT INTO users (Email, Password, Username, Level) VALUES "
        + "(?,?,?,1);";
        KeyHolder keyHolder = new GeneratedKeyHolder();
        int count = template.update(connection -> {
        PreparedStatement ps = connection.prepareStatement(sql,
        Statement.RETURN_GENERATED_KEYS);
        ps.setString(1, email);
        ps.setString(2, password);
        ps.setString(3, username);
        return ps;
        }, keyHolder);
        Long generatedId =
        Objects.requireNonNull(keyHolder.getKey()).longValue();

        result.add(count + " product has been added.");
        result.add("with generated id: " + generatedId);
        mv.addObject("result", result);
    return mv;
 }
 
    @RequestMapping("/login")
    ModelAndView login(@RequestParam String username,@RequestParam String password){
        ModelAndView mv = new ModelAndView("/editprofile");
        final List<String> result = new ArrayList<String>();
        String sql = "SELECT * FROM users WHERE Username=?";
        User user = template.queryForObject(sql,
        new BeanPropertyRowMapper<User>(User.class), username);
        if(user.getPassword() != password){
            user.setAuthenticated(false);
        }else{
            user.setAuthenticated(true);
        }
        mv.addObject("user", user);
        mv.addObject("result", result);
    return mv;
    }

    @RequestMapping("/editprofile")
    public String editprofile(){
        return "editprofile";
    }
    
    @RequestMapping("/electricity")
    public String electricity() {
        return "ElectricityConsumption";
    }

    @RequestMapping("/recycling")
    public String recycling() {
        return "RecyclingActivity";
    }

    @RequestMapping("/water")
    public String water() {
        return "WaterConsumption";
    }

    @RequestMapping("/electricitybill")
    public String electricitybill() {
        return "UploadElectricity";
    }

    @RequestMapping("/recyclingbill")
    public String recyclingbill() {
        return "UploadRecycling";
    }

    @RequestMapping("/waterbill")
    public String waterbill() {
        return "UploadWater";
    }
    @RequestMapping("/pertandinganadmin2")
    public String pertandinganadmiin2(){
        return "pertandinganadmin2";
    }
        @RequestMapping("/reportcalculation")
    public String reportcalculation(){
        return "reportcalculation";
    }
        @RequestMapping("/reportviewanalysis")
    public String reportviewanalysis(){
        return "reportviewanalysis";
    }
        @RequestMapping("/timeline")
    public String timeline(){
        return "timeline";
    }
        @RequestMapping("/pertandinganadmin")
    public String pertandinganadmin(){
        return "pertandinganadmin";
    }
            @RequestMapping("/uploadic")
    public String uploadic(){
        return "uploadic";
    }

    @RequestMapping("/competitionUser")
    public String competitionuser(){
        return "competitionUser";
    }

    @RequestMapping("/certificate")
    public String certificate(){
        return "certificate";
    }

        @RequestMapping("/dashboard")
    public String dashboard(){
        return "dashboard";
    }
}
