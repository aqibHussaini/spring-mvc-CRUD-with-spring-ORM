package com.mycontrollers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.Entities.Mylink;
@Controller
public class LinkController {
	@Autowired
	HibernateTemplate hibernatetemplate;
	@GetMapping(value = "/linkhome") 
public String Home()
{
	return "LinkHome";
}
	@GetMapping(value = "/linkform") 
	public String form()
	{
		return "myform";
	}
	@GetMapping("/linkfromhandler")
	@Transactional
	public String linkhandler(Model m,HttpServletRequest request)
	{
	String link=	request.getParameter("link");
	String description=	request.getParameter("description");
		Mylink obj=new Mylink();
		obj.setDescription(description);
		obj.setLink(link);
		hibernatetemplate.save(obj);
		return "redirect:viewLinks";
	}
	@GetMapping(value = "/viewLinks") 
public String view(HttpServletRequest request)
{
		List<Mylink> links=null;
		links = hibernatetemplate.loadAll(Mylink.class);
		request.setAttribute("links", links);
	return "viewlink";
}
	@GetMapping("/delete")
	@Transactional
	public void Delete(HttpServletRequest request)
	{
		int id=Integer.parseInt(""+request.getParameter("id"));
		Mylink obj=hibernatetemplate.load(Mylink.class, id);	
		hibernatetemplate.delete(obj);
		
	}
	@GetMapping("/update")
	@Transactional
	public String update(HttpServletRequest req,HttpServletResponse res)
	{
		int id=Integer.parseInt(""+req.getParameter("id"));
		System.out.println(id);
		Mylink obj=hibernatetemplate.load(Mylink.class, id);
		System.out.println(obj);
		req.setAttribute("obj",obj);
		return"updateform";
	}
	
	@PostMapping("/updatehandler")
	@Transactional
	public String updatehandler(HttpServletRequest request)
	{
		int id=	Integer.parseInt(""+request.getParameter("id"));
		String link=	request.getParameter("link");
		String description=	request.getParameter("description");
		Mylink obj=new Mylink();
		obj.setId(id);
		obj.setLink(link);
		obj.setDescription(description);
		this.hibernatetemplate.update(obj);
		return "redirect:viewLinks";
	}
	

}