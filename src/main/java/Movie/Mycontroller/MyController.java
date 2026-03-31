package Movie.Mycontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import Movie.Dao.MyDao;
import Movie.entity.Movie;

@Controller
public class MyController {
	@Autowired
	MyDao mydao;
	
	
	@GetMapping("/")
	public String home() {
		return "index.jsp";
	}
	@GetMapping("/add")
	public String add() {
		return "add.jsp";
	}
	
	
	@PostMapping("/add")
	public String add(@ModelAttribute Movie movie,RedirectAttributes attribute) {
		mydao.Save(movie);
		attribute.addFlashAttribute("msg","data saved success");
		return "redirect:/";
		}
	@GetMapping("/view")
	public String view(ModelMap map){
		List<Movie> movie=mydao.fetch();
		map.put("movies", movie);
		return "view.jsp";
	}
	
	@GetMapping("/delete")
	public String delete(@RequestParam("id") int id) {
		mydao.delete(id);
		return "redirect:/view";
	}
	@GetMapping("/edit")
	public String edit(@RequestParam("id")int id, ModelMap map){
		Movie movie=mydao.findById(id);
		map.put("movies",movie);
		return "edit.jsp";
	}
	@PostMapping("/update")
	public String update(@ModelAttribute Movie movie,RedirectAttributes attribute) {
		mydao.update(movie);
		attribute.addFlashAttribute("msg", " message updated  success");
		return "redirect:/view";
		
		
	}
	
	
	

}
