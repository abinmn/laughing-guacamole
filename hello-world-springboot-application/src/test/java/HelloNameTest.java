import hello.HelloName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.web.servlet.MockMvc;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;

@SpringBootTest(classes = HelloName.class)
@AutoConfigureMockMvc
public class HelloNameTest {

    @Autowired
    MockMvc mockMvc;

    @Test
    void checkIfHelloWorldIsReturnedOnRootPath() throws Exception {
        mockMvc.perform(get("/"))
                .andExpect(content().string("Hello World, append your name after slash"));
    }

    @Test
    void checkIfStringAppendedToRootPathIsReturned() throws Exception {
        mockMvc.perform(get("/World"))
                .andExpect(content().string("Hello World!"));
    }


}
