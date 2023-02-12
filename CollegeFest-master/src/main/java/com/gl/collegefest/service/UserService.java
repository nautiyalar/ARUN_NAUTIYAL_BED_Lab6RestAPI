package com.gl.collegefest.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.gl.collegefest.model.User;
import com.gl.collegefest.model.UserRegistrationDto;

public interface UserService extends UserDetailsService {
	public User save(UserRegistrationDto registrationDto);

}
