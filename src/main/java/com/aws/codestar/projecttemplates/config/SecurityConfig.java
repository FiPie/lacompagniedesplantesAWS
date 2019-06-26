package com.aws.codestar.projecttemplates.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import javax.sql.DataSource;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    private DataSource dataSource;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication()
                .dataSource( dataSource )
                .passwordEncoder( passwordEncoder() )
                .usersByUsernameQuery( "SELECT email, password, true FROM users WHERE email=?" )
                .authoritiesByUsernameQuery( "SELECT u.email, ur.roles FROM users_roles ur JOIN users u ON u.id = ur.user_id WHERE u.email = ?" );
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception{
        http.formLogin()
                .loginPage( "/login" )
                .usernameParameter( "email" )
                .passwordParameter( "password" )
                .successHandler(myAuthenticationSuccessHandler())               //new customized one
                //.defaultSuccessUrl( "/", true )                               //default one
                .and()
                .authorizeRequests()

                .antMatchers( "/login" ).anonymous()
                .antMatchers( "/" ).permitAll()
                .antMatchers( "/images/**" ).permitAll()
                .antMatchers( "/css/**" ).permitAll()
                .antMatchers( "/js/*" ).permitAll()
                .antMatchers( "/resources/**" ).permitAll()
                .antMatchers( "/aboutMe" ).permitAll()
                .antMatchers( "/reiki" ).permitAll()
                .antMatchers( "/herbes" ).permitAll()
                .antMatchers( "/offre" ).permitAll()
                .antMatchers( "/agenda" ).permitAll()
                .antMatchers( "/herbier" ).permitAll()
                .antMatchers( "/contact" ).permitAll()
                .antMatchers( "/gallerie" ).permitAll()
                .antMatchers( "/get-image" , "/get-image-with-media-type", "/get-file", "/image-response-entity","/image-view" ).permitAll()
                .antMatchers( "/admin/*" ).hasRole( "ADMIN" )
                .antMatchers( "/fileUpload" ).hasRole( "ADMIN" )
                .antMatchers( "/filesInDataBase" ).hasRole( "ADMIN" )
                .anyRequest().authenticated()
                .and()
                .csrf().disable()
                .logout().logoutUrl( "/logout" ).invalidateHttpSession( true ).clearAuthentication( true )
                .logoutSuccessUrl( "/" );

    }
    @Bean           //new one
    public AuthenticationSuccessHandler myAuthenticationSuccessHandler(){
        return new MySimpleUrlAuthenticationSuccessHandler();
    }


}
