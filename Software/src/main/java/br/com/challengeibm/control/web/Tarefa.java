package br.com.challengeibm.control.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Tarefa {
	public String processarRequest(HttpServletRequest req, HttpServletResponse resp);
}
