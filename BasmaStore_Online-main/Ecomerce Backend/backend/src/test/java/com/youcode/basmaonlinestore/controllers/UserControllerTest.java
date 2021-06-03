package com.youcode.basmaonlinestore.controllers;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.youcode.basmaonlinestore.entity.ProductInfo;
import com.youcode.basmaonlinestore.entity.User;
import com.youcode.basmaonlinestore.req_res.request.LoginForm;
import org.hibernate.annotations.ColumnDefault;
import org.junit.Before;
import org.junit.Test;
import org.junit.jupiter.api.BeforeEach;
import org.junit.runner.RunWith;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;

import javax.inject.Inject;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;

//@AutoConfigureJsonTesters
//@WebMvcTest(UserController.class)
//@AutoConfigureMockMvc
@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
public class UserControllerTest {

    @Inject
    private MockMvc mockMvc;

    private ObjectMapper objectMapper;

    @Before
    public void setUp() {
        objectMapper = new ObjectMapper();
    }

    @Test
    public void login() throws Exception {
        LoginForm loginForm = new LoginForm();
        loginForm.setUsername("abdrazakghiyati2@gmail.com");
        loginForm.setPassword("sofia");

        mockMvc.perform(MockMvcRequestBuilders
                .post("/login")
                .content(objectMapper.writeValueAsString(loginForm))
                .contentType(MediaType.APPLICATION_JSON))
                .andExpect(MockMvcResultMatchers.status().isOk());
    }

    @Test
    public void save() throws Exception {

        User user = new User();
        user.setId(4L);
        user.setActive(true);
        user.setPassword("testPassword");
        user.setAddress("testAddress");
        user.setName("testName");
        user.setPhone("1234567890");
        user.setEmail("testEmail@gmail.com");

        mockMvc.perform(MockMvcRequestBuilders
                .post("/register")
                .content(objectMapper.writeValueAsString(user))
                .contentType(MediaType.APPLICATION_JSON))
                .andExpect(MockMvcResultMatchers.status().isOk());

    }

    @Test
    public void addProduct() throws Exception {

        ProductInfo productInfo = new ProductInfo();
        productInfo.setProductId("B000111");
        productInfo.setProductName("testProductName");
        productInfo.setProductPrice(BigDecimal.valueOf(12));
        productInfo.setProductStock(12);
        productInfo.setProductDescription("test product description");
        productInfo.setProductIcon("test product icon");
        productInfo.setProductStatus(0); // 0 available, 1 unavailable
        productInfo.setCategoryType(1);

        mockMvc.perform(MockMvcRequestBuilders
                .post("/seller/product/new")
                .content(objectMapper.writeValueAsString(productInfo))
                .contentType(MediaType.APPLICATION_JSON))
                .andExpect(MockMvcResultMatchers.status().isOk());

    }

    @Test
    public void deleteProduct() throws Exception {

        mockMvc.perform(MockMvcRequestBuilders
                .delete("/seller/product/{id}/delete", "B000111")
                .contentType(MediaType.APPLICATION_JSON))
                .andExpect(MockMvcResultMatchers.status().isOk());

    }
}
