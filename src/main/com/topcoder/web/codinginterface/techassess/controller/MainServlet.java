package com.topcoder.web.codinginterface.techassess.controller;

import com.topcoder.security.TCSubject;
import com.topcoder.security.admin.PrincipalMgrRemote;
import com.topcoder.shared.messaging.QueueMessageSender;
import com.topcoder.shared.screening.common.ScreeningApplicationServer;
import com.topcoder.shared.screening.common.ScreeningContext;
import com.topcoder.shared.security.Resource;
import com.topcoder.shared.util.DBMS;
import com.topcoder.shared.util.logging.Logger;
import com.topcoder.web.codinginterface.techassess.controller.request.Base;
import com.topcoder.web.codinginterface.techassess.model.WebQueueResponseManager;
import com.topcoder.web.codinginterface.techassess.model.WebResponsePool;
import com.topcoder.web.common.BaseServlet;
import com.topcoder.web.common.RequestProcessor;
import com.topcoder.web.common.TCRequest;
import com.topcoder.web.common.TCResponse;
import com.topcoder.web.common.security.Constants;
import com.topcoder.web.common.security.LightAuthentication;
import com.topcoder.web.common.security.SessionPersistor;
import com.topcoder.web.common.security.WebAuthentication;

import javax.naming.Context;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;

/**
 * User: dok
 * Date: Dec 1, 2004
 */
public class MainServlet extends BaseServlet {

    private final static Logger log = Logger.getLogger(MainServlet.class);
    private static QueueMessageSender sender = null;
    private static WebQueueResponseManager receiver = null;


    //todo have to check if the user currently has a synchronous
    //todo request pending, throw out new request in that case


    public void init(ServletConfig config) throws ServletException {
        log.debug("loading up the techassess servlet");
        super.init(config);

        Context context = null;
        try {
            context = ScreeningContext.getJMSContext();
        } catch (NamingException e) {
            throw new ServletException(e);
        }

        log.debug("create queue message sender");
        sender = new QueueMessageSender(ScreeningApplicationServer.JMS_FACTORY,
                DBMS.REQUEST_QUEUE, context);
        sender.setPersistent(true);
        sender.setDBPersistent(false);
        sender.setFaultTolerant(false);
        log.info("created queue message sender");

        log.debug("create queue response manager");
        receiver = new WebQueueResponseManager(ScreeningApplicationServer.JMS_FACTORY,
                DBMS.RESPONSE_QUEUE, context,
                "serverID = " + ScreeningApplicationServer.WEB_SERVER_ID,
                new WebResponsePool());
        log.info("created queue response manager");


/*
        Constants.initialize();

        if (!Constants.isInitialized())
            throw new ServletException("Constants did not initialize properly");
*/
    }


    protected boolean hasPermission(WebAuthentication auth, Resource r) throws Exception {
        //todo maybe we check if they have an active session here
        return true;
    }


    protected TCSubject getUser(long id) throws Exception {
        //todo speed this up, we probably need to cache here
        TCSubject user = null;
        PrincipalMgrRemote pmgr = (PrincipalMgrRemote) Constants.createEJB(PrincipalMgrRemote.class);
        user = pmgr.getUserSubject(id);
        return user;
    }


    protected RequestProcessor callProcess(String processorName, TCRequest request, TCResponse response,
                                           WebAuthentication authentication) throws Exception {
        Base rp = null;

        rp = (Base) Class.forName(processorName).newInstance();
        rp.setRequest(request);
        rp.setResponse(response);
        rp.setSender(sender);
        rp.setReceiver(receiver);
        rp.setAuthentication(authentication);
        rp.process();
        return rp;
    }

    protected WebAuthentication createAuthentication(TCRequest request,
                                                     TCResponse response) throws Exception {
        return new LightAuthentication(new SessionPersistor(request.getSession()), request, response,
                LightAuthentication.TECH_ASSESS_SITE);
    }


}
