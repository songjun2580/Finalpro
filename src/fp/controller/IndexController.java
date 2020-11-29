package fp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("index.do")
	public String indexForm() {
		System.out.println("인데스 컨트롤러 들어옴");
		return "index";
	}
}
