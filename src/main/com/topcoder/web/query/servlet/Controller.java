package com.topcoder.web.query.servlet;

import com.topcoder.shared.util.TCContext;
import com.topcoder.shared.util.logging.Logger;

import com.topcoder.web.query.common.Constants;
import com.topcoder.web.query.common.AuthenticationException;
import com.topcoder.web.query.bean.Authentication;
import com.topcoder.web.query.bean.Task;
//import com.topcoder.ejb.AuthenticationServices.Authentication;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.Enumeration;

/**
 * The servlet to handle query tool http requests.
 * @author Greg Paul
 * @version $Revision$
 *
 */

public class Controller extends HttpServlet {
    private static Logger log = Logger.getLogger(Controller.class);

    /**
     * Initializes the servlet.
     * @throws ServletException
     */
    public void init() throws ServletException {
        com.topcoder.web.query.common.Constants.init(getServletConfig());
    }

    /**
     * This method handles requests.
     *
     * @param request the servlet request object
     * @param  response the servlet response object
     *
     * @throws ServletException
     * @throws IOException
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String taskName = request.getParameter(Constants.TASK_PARAM);

        InitialContext ctx = null;
        try {
            ctx = (InitialContext) TCContext.getInitial();

            if (taskName != null && taskName.trim().length() > 0) {
                log.info("[**** query **** " + taskName + " **** " + request.getRemoteHost() + " ****]");    
                // process a task
                Task task = null;
                Class taskClass = null;
                taskClass = Class.forName(Constants.QUERY_PACKAGE + "." + taskName);
                task = (Task) taskClass.newInstance();
                task.setInitialContext(ctx);

                Enumeration parameterNames = request.getParameterNames();
                while (parameterNames.hasMoreElements()) {
                    String parameterName = parameterNames.nextElement().toString();
                    String[] parameterValues = request.getParameterValues(parameterName);
                    if (parameterValues != null) {
                        task.setAttributes(parameterName, parameterValues);
                    }
                }

                task.setServletPath(request.getContextPath() + request.getServletPath());

                task.servletPreAction(request, response);

                task.process();

                task.servletPostAction(request, response);

                request.setAttribute( taskName, task );

                getServletContext().getRequestDispatcher( response.encodeURL(task.getNextPage()) ).forward(request, response);

            }
            else {
                forwardToLoginPage(request, response);
            }
        } catch (AuthenticationException authex) {
            log.debug(authex.getMessage());
            try {
                Authentication.attemptLogin("","",ctx,request.getSession(true),
                        request.getContextPath()+request.getServletPath()+"?"+request.getQueryString());
            } catch (AuthenticationException e) {
                forwardToLoginPage(request, response);
            }
        } catch (ClassNotFoundException cnfex) {
            forwardToErrorPage(request, response, cnfex);
        } catch (NamingException ex) {
            forwardToErrorPage(request, response, ex);
        } catch (InstantiationException e) {
            forwardToErrorPage(request, response, e);
        } catch (IllegalAccessException e) {
            forwardToErrorPage(request, response, e);
        } catch (Exception e) {
            forwardToErrorPage(request, response, e);
        }
    }

    private void forwardToLoginPage(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher(response.encodeURL("/"+Constants.LOGIN_PAGE)).forward(request, response);
    }

    private void forwardToErrorPage(HttpServletRequest request, HttpServletResponse response,
                                    Throwable exception) throws ServletException, IOException {

        log.error("Controller error - forwarding to error page", exception);
        request.setAttribute("Exception", exception);
        /* get the root context so we can forward to the generic error page, not just
           one within this web application
         */
        getServletContext().getContext("/").getRequestDispatcher(
                response.encodeURL("/"+Constants.ERROR_PAGE)).forward(request, response);
    }
}




