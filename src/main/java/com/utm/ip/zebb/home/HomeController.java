package com.utm.ip.zebb.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String greet() {
        return "home";
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
}
