package co.yedam.app.common;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;


@WebListener
public class SessionListner implements HttpSessionListener, HttpSessionAttributeListener {

    public SessionListner() {
    }


    public void sessionCreated(HttpSessionEvent session)  { //세션이 생성될때
    	System.out.println("세션이 생성되었습니다" + session.getSession().getId());
    }

    public void sessionDestroyed(HttpSessionEvent session)  {  //세션이 제거될때
    	System.out.println("세션이 제거되었습니다" + session.getSession().getId());
    }


    public void attributeAdded(HttpSessionBindingEvent event)  { //세션에 새로운 속성이 추가될때
    	System.out.println("세션에 속성 추가" + event.getName() +  ":" + event.getValue());
    	
    }


    public void attributeRemoved(HttpSessionBindingEvent arg0)  { //세션에서 속성을 제거할때
    }

    public void attributeReplaced(HttpSessionBindingEvent arg0)  { //세션에서 속성값이 변경될때
    	
    }
	
}
