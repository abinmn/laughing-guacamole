package hello;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.HandlerMapping;

import javax.servlet.http.HttpServletRequest;

@SpringBootApplication
@RestController
public class HelloName {

    @RequestMapping("/")
    public String home() {
        return "Hello World, append your name after slash";
    }

	@RequestMapping("/**")
	public String name(final HttpServletRequest request) {
//        String name = (String) request.getAttribute(HandlerMapping.PATH_WITHIN_HANDLER_MAPPING_ATTRIBUTE);
        String name = request.getRequestURI().split("/")[1];
        return String.format("Hello %s!", name);
	}

    public static void main(String[] args) {
        SpringApplication.run(HelloName.class, args);
    }
}