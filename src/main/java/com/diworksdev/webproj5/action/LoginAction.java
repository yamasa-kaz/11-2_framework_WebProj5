package com.diworksdev.webproj5.action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.diworksdev.webproj5.dao.LoginDAO;
import com.diworksdev.webproj5.dto.LoginDTO;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{
    private String username;
    private String password;
    private List<LoginDTO> LoginDTOList=new ArrayList<LoginDTO>();
    private Map<String,Object>session;
    
    public String execute() {
        String ret=ERROR;
        System.out.println(username);
        System.out.println(password);
        
        LoginDAO dao=new LoginDAO();
        LoginDTOList=dao.select(username,password);
        
        if(this.username.equals(LoginDTOList.get(0).getUsername()) && this.password.equals(LoginDTOList.get(0).getPassword())) {
            session.put("loginDTOList", LoginDTOList);
            ret=SUCCESS;
        }else {
            session.put("loginDTOList",LoginDTOList);
            ret=ERROR;
        }
        return ret;
    }
    
    public String getUsername() {
        return username;
    }
    
    public void setUsername(String username) {
        this.username=username;
    }
    
    public String getPassword() {
        return password;
    }
    
    public void setPassword(String password) {
        this.password=password;
    }
    
    public Map<String,Object>getSession(){
        return session;
    }
    
    public void setSession(Map<String,Object>session) {
        this.session=session;
    }
}
