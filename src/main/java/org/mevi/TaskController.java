package org.mevi;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.apache.catalina.core.ApplicationContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TaskController {
	
	@Autowired
	EntityManager em;
	
	@Autowired
	Task t;
	
	@RequestMapping("/create")
	public ModelAndView createTask() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("create.jsp");
		return mv;		
	}
	
	private int id;
	private String tname;
	private String uname;
	private String email;
	private String pwd; 
	private String tasn;
	private int dl;
	
	@RequestMapping("/save")
	public ModelAndView saveTask(@RequestParam String tname, 
								@RequestParam String uname,
								@RequestParam String email,
								@RequestParam String pwd, 
								@RequestParam String tasn,
								@RequestParam int dl) {
		
//		Task t = new Task();
		
		t.setTname(tname);
		t.setUname(uname);
		t.setEmail(email);
		t.setPwd(pwd);
		t.setTasn(tasn);
		t.setDl(dl);
		
		EntityTransaction et = em.getTransaction();
		
		et.begin();
		em.merge(t);
		et.commit();
		
		Query q = em.createQuery("from Task");
		List <Task> tlist = q.getResultList();
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("alltask.jsp");
		mv.addObject("tlist", tlist);
		mv.addObject("msg", "Task Created Successfully");
		return mv;
	}
	
	@RequestMapping("/display")
	public ModelAndView displayAllTask() {
		Query q = em.createQuery("from Task");
		List <Task> tlist = q.getResultList();
		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("alltask.jsp");
		mv.addObject("tlist", tlist);
		mv.addObject("msg", "Task Created Successfully");
		return mv;
	}
	
	@RequestMapping("/delete")
	public ModelAndView deleteTask(@RequestParam int id) {
		Task t = em.find(Task.class, id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("alltask.jsp");
		
		if(t!=null) {
			EntityTransaction et = em.getTransaction();
			et.begin();
			em.remove(t);
			et.commit();
			Query q = em.createQuery("from Task");
			List <Task> tlist = q.getResultList();
			mv.setViewName("alltask.jsp");
			mv.addObject("tlist", tlist);
			mv.addObject("msg", "Task Deleted Successfully");
		}
		
		else {
			Query q = em.createQuery("from Task");
			List <Task> tlist = q.getResultList();
			mv.setViewName("alltask.jsp");
			mv.addObject("tlist", tlist);
			mv.addObject("msg", "Task Unable To Delete");
		}
		return mv;
	}
	
	@RequestMapping("/updatetask")
	public ModelAndView updateToTask(@RequestParam int id) {
		Task t = em.find(Task.class, id);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("update.jsp");
		mv.addObject("t", t);
		return mv;
	}
	
	@RequestMapping("update")
	public ModelAndView updateTask(@RequestParam int id,
									@RequestParam String tname, 
									@RequestParam String uname,
									@RequestParam String email,
									@RequestParam String pwd, 
									@RequestParam String tasn,
									@RequestParam int dl) {
		
		Task t = em.find(Task.class, id);
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName(uname);
		if(t!=null) {
			
			t.setTname(tname);
			t.setUname(uname);
			t.setEmail(email);
			t.setPwd(pwd);
			t.setTasn(tasn);
			t.setDl(dl);
			
			EntityTransaction et = em.getTransaction();
			et.begin();
			em.merge(t);
			et.commit();
			Query q = em.createQuery("from Task");
			List <Task> tlist = q.getResultList();
			mv.setViewName("alltask.jsp");
			mv.addObject("tlist", tlist);
			mv.addObject("msg", "Task Updated Successfully");
		}
		
		else {
			Query q = em.createQuery("from Task");
			List <Task> tlist = q.getResultList();
			mv.setViewName("alltask.jsp");
			mv.addObject("tlist", tlist);
			mv.addObject("msg", "Task Unable To Update");
		}
		return mv;
		
	}
	
	
	@RequestMapping("/find")
	public ModelAndView findTask(@RequestParam String ft) {
		Query q = em.createQuery("from Task");
		List <Task> tlist = q.getResultList();
		ArrayList<Task> at = new ArrayList<Task>();
		for(Task ul: tlist) {
			if((ul.getId()+"").equalsIgnoreCase(ft) || ul.getTname().equalsIgnoreCase(ft) ||
				ul.getUname().equalsIgnoreCase(ft) || ul.getEmail().equalsIgnoreCase(ft) || 
				ul.getPwd().equalsIgnoreCase(ft) || (ul.getDl()+"").equalsIgnoreCase(ft)) {
				at.add(ul);
			}
		}		
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("alltask.jsp");
		mv.addObject("tlist", at);
		mv.addObject("msg", "Task Found Successfully");
		return mv;
	}
								
}
