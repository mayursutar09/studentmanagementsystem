package com.example.demo.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import java.util.List;
import com.example.demo.Model.AddResult;
import com.example.demo.Model.AdminData;
import com.example.demo.Model.StudentData;
import com.example.demo.Repository.AdminInfo;
import com.example.demo.Repository.ResultInfo;
import com.example.demo.Repository.StudentInfo;
import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	int loggedId;
	@Autowired
	private StudentInfo repo;
	@Autowired
	private AdminInfo repo1;
	@Autowired
	private ResultInfo repo2;

	@RequestMapping("/")
	public String home() {
		return "Home";
	}

	@RequestMapping("/added")
	public String added(@ModelAttribute StudentData em1) {
		repo.save(em1);
		return "login";
	}

	@RequestMapping("/show")
	public String show(Model m) {
		List<StudentData> al = repo.findAll();
		m.addAttribute("ele_data", al);
		return "show";
	}

	@RequestMapping("/{id}")
	public String del(@PathVariable int id) {
		repo.deleteById(id);
		return "redirect:/show";
	}

	@RequestMapping("/edit/{id}")
	public String edit(@PathVariable int id, Model m) {
		StudentData ob = repo.findById(id).get();
		m.addAttribute("ele1", ob);
		return "edit";
	}

	@RequestMapping("/edit/update/{id}")
	public String update(@PathVariable int id, @ModelAttribute StudentData em1) {
		StudentData ob = repo.findById(id).get();
		ob.setName(em1.getName());
		ob.setCity(em1.getCity());
		ob.setEmail(em1.getEmail());
		ob.setPassword(em1.getPassword());
		repo.save(ob);
		return "redirect:/show";
	}

	@RequestMapping("/login")
	public String userLogin(@RequestParam String email, @RequestParam String password, HttpSession login) {
		StudentData st = repo.findByEmail(email);
		if (st != null && st.getEmail().equals(email) && st.getPassword().equals(password)) {
			loggedId=st.getId();
			login.setAttribute("Login", st);
			return "StudentPanel";
		} else {
			return "signup";
		}
	}

	@RequestMapping("/AdminAuth")
	public String adminLoggedIn(@RequestParam String email, @RequestParam String password, HttpSession login2) {
		AdminData st = repo1.findByEmail(email);
		if (st != null && st.getEmail().equals(email) && st.getPassword().equals(password)) {
			login2.setAttribute("Login", st);
			return "AdminPanel";
		} else {
			return "adminLogin";
		}
	}

	@RequestMapping("/addedAdmin")
	public String addedAdmin(@ModelAttribute AdminData em1) {
		repo1.save(em1);
		return "AdminPanel";
	}
	@RequestMapping("/addedResult")
	public String addedResult(@ModelAttribute AddResult em1, @RequestParam("studentData") int studentDataId) {
		double totalMarks = em1.getSub1() + em1.getSub2() + em1.getSub3() + em1.getSub4() + em1.getSub5();
		double percentage = totalMarks / 500 * 100;
		em1.setPercentage(percentage);
		StudentData studentData = repo.findById(studentDataId).orElse(null);
		em1.setStudentData(studentData);
		if (percentage > 35) {
			em1.setResult("Pass");
		} else {
			em1.setResult("Fail");
		}
		repo2.save(em1);
		return "addResult";
	}
	@RequestMapping("/showresult")
	public String showResult(Model em) {
		StudentData st1=repo.findById(loggedId).get();
		AddResult ad1=repo2.findByStudentDataId(loggedId);
		if (st1!=null && ad1!=null) {
			em.addAttribute("ele2", st1);
			em.addAttribute("ad1", ad1);
			return "result";
		}else {
			return "notfound";
		}
	}
	@RequestMapping("/editShowUser")
	public String EditShow(Model em) {
		StudentData st1=repo.findById(loggedId).get();
		em.addAttribute("ele3", st1);
		return "editShow";
	}
	@RequestMapping("/edit/user/{id}")
	public String editUser(@PathVariable int id, Model m) {
		StudentData ob = repo.findById(id).get();
		m.addAttribute("ele1", ob);
		return "edit2";
	}
	@RequestMapping("edit/user/update/{id}")
	public String update2(@PathVariable int id, @ModelAttribute StudentData em1) {
		StudentData ob = repo.findById(id).get();
		ob.setName(em1.getName());
		ob.setCity(em1.getCity());
		ob.setEmail(em1.getEmail());
		ob.setPassword(em1.getPassword());
		repo.save(ob);
		return "redirect:/editShowUser";
	}
	@RequestMapping("edit/user/back")
	public String back() {
		return "redirect:/editShowUser";
	}
	@RequestMapping("/showAdmins")
	public String showAdmins(Model m) {
		List<AdminData> al = repo1.findAll();
		m.addAttribute("ele_data", al);
		return "show2";
	}
	@RequestMapping("admin/{id}")
	public String delAdmin(@PathVariable int id) {
		repo1.deleteById(id);
		return "redirect:/showAdmins";
	}
	@RequestMapping("/edit/admin/{id}")
	public String editAdmin(@PathVariable int id, Model m) {
		AdminData ob = repo1.findById(id).get();
		m.addAttribute("ele", ob);
		return "edit3";
	}

	@RequestMapping("edit/admin/update/{id}")
	public String updateAdmin(@PathVariable int id, @ModelAttribute StudentData em1) {
		AdminData ob = repo1.findById(id).get();
		ob.setName(em1.getName());
		ob.setEmail(em1.getEmail());
		ob.setPassword(em1.getPassword());
		repo1.save(ob);
		return "redirect:/showAdmins";
	}
	@RequestMapping("/edit/admin/back")
	public String backadmin() {
		return "redirect:/showAdmins";
	}
}
