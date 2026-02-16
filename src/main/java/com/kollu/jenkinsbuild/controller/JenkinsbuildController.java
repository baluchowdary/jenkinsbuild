package com.kollu.jenkinsbuild.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class JenkinsbuildController {

	@GetMapping("/test")
	public String getDetails() {
		return "I am from Jenkins controller";
	}
}
