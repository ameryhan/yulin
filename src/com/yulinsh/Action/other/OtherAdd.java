package com.yulinsh.Action.other;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

 
 
import com.yulinsh.actionFrom.AnFrom;
import com.yulinsh.service.OtherService;
import com.yulinsh.vo.AnnouncementVO;
 

/**
 * ���淢��
 * @author Eric
 *
 */
public class OtherAdd extends Action {
	OtherService service;

	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {

		AnFrom anfrom =  (AnFrom)form;
		AnnouncementVO vo = new AnnouncementVO();
		String anTitle=request.getParameter("anTitle");
		 vo.setAnTitle(anTitle);
		String anAuthor=request.getParameter("anAuthor");
		vo.setAnAuthor(anAuthor);
		String anConent=request.getParameter("anConent");
		vo.setAnConent(anConent);
		service.getInsertAn(vo);

		return mapping.findForward("add");
	}

	public OtherService getService() {
		return service;
	}

	public void setService(OtherService service) {
		this.service = service;
	}

 

	 
}
