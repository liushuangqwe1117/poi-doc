package com.cad.poidocx.configuration;

import com.cad.poidocx.servlet.CookieSetFilter;
import com.cad.poidocx.servlet.CookieSetServlet;
import org.springframework.core.annotation.Order;
import org.springframework.web.WebApplicationInitializer;

import javax.servlet.*;
import java.util.EnumSet;

@Order(1)
public class CommonWebApplicationInitializer implements WebApplicationInitializer {
    @Override
    public void onStartup(ServletContext servletContext) throws ServletException {
        CookieSetFilter cookieSetFilter = new CookieSetFilter();
        FilterRegistration.Dynamic filterRegistration = servletContext.addFilter("cookieSetFilter", cookieSetFilter);
        filterRegistration.addMappingForUrlPatterns(EnumSet.of(DispatcherType.INCLUDE, DispatcherType.REQUEST, DispatcherType.FORWARD), false, "/*");

        CookieSetServlet cookieSetServlet = new CookieSetServlet();
        ServletRegistration.Dynamic servletRegistration = servletContext.addServlet("cookieSetServlet",cookieSetServlet);
        servletRegistration.setLoadOnStartup(2);
        servletRegistration.addMapping("/");
    }
}
