package org.casadocodigo.loja.conf;

import org.casadocodigo.loja.controllers.HomeController;
import org.casadocodigo.loja.daos.AbstractDAO;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@EnableWebMvc
@ComponentScan(basePackageClasses={HomeController.class, AbstractDAO.class})
public class AppWebConfiguration {
	
	@Bean
	public InternalResourceViewResolver internalResourceViewResolve() {
        InternalResourceViewResolver resolve = new InternalResourceViewResolver();
        resolve.setPrefix("/WEB-INF/views/");
        resolve.setSuffix(".jsp");
        return resolve;
    }

}
