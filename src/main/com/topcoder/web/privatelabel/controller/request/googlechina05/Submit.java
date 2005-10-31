package com.topcoder.web.privatelabel.controller.request.googlechina05;

import com.topcoder.web.privatelabel.controller.request.BaseActivate;
import com.topcoder.web.privatelabel.controller.request.ResumeRegSubmit;
import com.topcoder.web.privatelabel.model.SimpleRegInfo;
import com.topcoder.web.privatelabel.model.FullRegInfo;
import com.topcoder.web.privatelabel.Constants;
import com.topcoder.web.common.TCWebException;
import com.topcoder.web.common.SessionInfo;
import com.topcoder.web.common.BaseServlet;
import com.topcoder.web.ejb.user.User;
import com.topcoder.shared.util.ApplicationServer;
import com.topcoder.shared.util.TCSEmailMessage;
import com.topcoder.shared.util.EmailEngine;
import com.topcoder.shared.util.TCResourceBundle;

import java.util.*;

/**
 * @author dok
 * @version $Revision$ $Date$
 *          Create Date: Oct 31, 2005
 */
public class Submit extends ResumeRegSubmit {


    protected void setNextPage() {
        TCResourceBundle bundle = new TCResourceBundle("PrivateLabel", getLocale());
        Calendar end = Calendar.getInstance();
        end.set(2005, Calendar.DECEMBER, 5, 20, 0);
        Calendar beginning = Calendar.getInstance();
        //beginning.set(2005, Calendar.JULY, 25, 9, 0);
        beginning.set(2005, Calendar.OCTOBER, 31, 9, 0);

        Calendar now = Calendar.getInstance();
        now.setTime(new Date());

        if (now.before(beginning) || now.after(end)) {
            setNextPage(bundle.getProperty("google_china_05_reg_closed_page"));
            setIsNextPageInContext(true);
        } else {
            if (isEligible((FullRegInfo) regInfo)) {
                if (hasErrors()) {
                    setNextPage(bundle.getProperty("google_china_05_reg_page"));
                    setIsNextPageInContext(true);
                } else {
                    SessionInfo info = (SessionInfo) getRequest().getAttribute(BaseServlet.SESSION_INFO_KEY);
                    StringBuffer buf = new StringBuffer(150);
                    buf.append(info.getAbsoluteServletPath());
                    buf.append("?");
                    buf.append(Constants.MODULE_KEY);
                    buf.append("=");
                    buf.append(Constants.STATIC);
                    buf.append(bundle.getProperty("google_china_05_reg_success_page"));
                    setNextPage(buf.toString());
                    setIsNextPageInContext(false);
                }
            } else {
                throw new RuntimeException("impossible, isEligible returned false, fix the code");
            }
        }
    }

    protected void handleActivation(SimpleRegInfo info, long userId) throws TCWebException {
        try {
            StringBuffer buf = new StringBuffer(1000);
            User user = (User) createEJB(getInitialContext(), User.class);
            String code = user.getActivationCode(userId, db);

            TCSEmailMessage mail = new TCSEmailMessage();
            mail.setSubject("IMPORTANT - Google Code Jam 2005 Activation Email");
            buf.append("You're invited to take part in the Google Code Jam 2005, a programming competition that will be worthy of your time, your skills and your interest.\n\n");
            buf.append("GOOGLE CODE JAM 2005 ACTIVATION INFORMATION\n\n");
            buf.append("Your Google activation code is ");
            buf.append(code);
            buf.append("\n\n");
            buf.append("To activate your account, navigate to the following WWW URL:\n\n");
            buf.append(getUrl(code));
            buf.append("\n\n");
            buf.append("If you cannot click on the web address above, please copy the address into your web browser to continue.  If the address spans two lines, please make sure you copy and paste both sections without any spaces between them.\n\n");
            buf.append("Your handle and password will provide you with access to the Competition Arena, where you can practice and chat, and where you'll compete in the Google Code Jam 2005.\n\n");
            buf.append("PRACTICING FOR THE EVENT\n");
            buf.append("There is a practice room available to you that will allow you to become acclimated with the competition environment before you participate in the Google Code Jam 2005.  The practice room contains a problem set that will be very similar in nature to the problems you will encounter during competition.  The practice room will be available from 9:00AM EDT on July 25, 2005 through 5:00PM EDT on September 23, 2005.\n\n");
            buf.append("You can access the practice rooms by navigating to http://www.topcoder.com/googlecodejam and clicking on the Competition Arena tab.\n\n");
            buf.append("COMPETING IN THE QUALIFICATION ROUND\n");
            buf.append("You may participate in the Qualification Round at any time between Monday, August 22 at Noon EDT and Tuesday, August 23 at Noon EDT (GMT -4).  You will have up to one hour to solve two problems.  It is recommended that you utilize the practice area prior to participating in the qualification.\n\n");
            buf.append("LAUNCHING THE ARENA\n");
            buf.append("You can launch and login to the competition arena at the appropriate time by navigating to http://www.topcoder.com/googlecodejam and clicking on the Competition Arena tab.\n\n");
            buf.append("You will need to have the Java 1.4.x runtime installed in order to launch the arena.\n\n");
            //buf.append("Mac OS X  users need to have the Java 1.4.x runtime installed, which requires OS X version 10.2.x.\n\n");
            buf.append("We also suggest that you read up on the competition process by navigating to http://www.topcoder.com/googlecodejam and clicking the Instructions link at the top.\n\n");
            buf.append("If you have any questions about how to participate, please email them to googlecodejam@topcoder.com\n\n");
            buf.append("Thank you for registering for the Google Code Jam 2005.  We look forward to seeing you in the Arena!\n\n");

            mail.setBody(buf.toString());
            mail.addToAddress(info.getEmail(), TCSEmailMessage.TO);
            mail.setFromAddress("googlecodejam@topcoder.com", "Google Code Jam Team");
            log.info("sent registration email to " + info.getEmail());
            EmailEngine.send(mail);
        } catch (Exception e) {
            throw new TCWebException(e);
        }
    }

    private String getUrl(String code) {
        StringBuffer buf = new StringBuffer(200);
        buf.append("http://");
        buf.append(ApplicationServer.SERVER_NAME);
        SessionInfo sInfo = (SessionInfo) getRequest().getAttribute(BaseServlet.SESSION_INFO_KEY);
        buf.append(sInfo.getServletPath());
        buf.append("?");
        buf.append(Constants.MODULE_KEY);
        buf.append("=");
        buf.append(Constants.GOOGLE_CHINA_05_ACTIVATION);
        buf.append("&");
        buf.append(BaseActivate.ACTIVATION_CODE);
        buf.append("=");
        buf.append(code);
        buf.append("&");
        buf.append(Constants.COMPANY_ID);
        buf.append("=");
        buf.append(regInfo.getCompanyId());
        return buf.toString();
    }
}

