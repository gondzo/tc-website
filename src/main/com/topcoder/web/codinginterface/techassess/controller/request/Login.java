package com.topcoder.web.codinginterface.techassess.controller.request;

import com.topcoder.shared.netCommon.screening.request.ScreeningLoginRequest;
import com.topcoder.shared.netCommon.screening.request.ScreeningTermsRequest;
import com.topcoder.shared.netCommon.screening.response.ScreeningLoginResponse;
import com.topcoder.shared.netCommon.screening.response.ScreeningTermsResponse;
import com.topcoder.shared.screening.common.ScreeningApplicationServer;
import com.topcoder.shared.security.SimpleUser;
import com.topcoder.shared.util.logging.Logger;
import com.topcoder.shared.messaging.TimeExpiredException;
import com.topcoder.shared.messaging.TimeOutException;
import com.topcoder.web.codinginterface.techassess.Constants;
import com.topcoder.web.codinginterface.ServerBusyException;
import com.topcoder.web.codinginterface.CodingInterfaceConstants;
import com.topcoder.web.common.NavigationException;
import com.topcoder.web.common.TCWebException;

/**
 * User: dok
 * Date: Dec 6, 2004
 */
public class Login extends Base {

    protected static Logger log = Logger.getLogger(Login.class);

    protected void techAssessProcessing() throws Exception {

        String handle = null;
        String password = null;

        setDefault(Constants.COMPANY_ID, new Long(getCompanyId()));

        if (hasParameter(Constants.HANDLE)) {
            handle = getRequest().getParameter(Constants.HANDLE);
            setDefault(Constants.HANDLE, handle);

            if (hasParameter(Constants.PASSWORD)) {
                password = getRequest().getParameter(Constants.PASSWORD);
            } else {
                addError(Constants.PASSWORD, "Please enter your password");
            }

            if (hasErrors()) {
                loadTerms();
                setNextPage(Constants.PAGE_LOGIN);
                setIsNextPageInContext(true);
            } else {
                ScreeningLoginRequest request = new ScreeningLoginRequest(handle, password, getCompanyId());
                request.setServerID(ScreeningApplicationServer.WEB_SERVER_ID);

                try {
                    send(request);
                } catch (ServerBusyException e) {
                    throw new NavigationException("Sorry, the server is busy with a previous request.  " +
                            "When using this tool, please wait for a response before you attempt to proceed.");
                }

                showProcessingPage();

                ScreeningLoginResponse response = (ScreeningLoginResponse) receive(5000);


                if (response.isSuccess()) {
                    getAuthentication().login(new SimpleUser(response.getUserID(), "", ""));
                    setSessionId(response.getSessionID());
                } else {
                    loadTerms();
                    addError(Constants.HANDLE, response.getMessage());
                }

                /* send them over to the login response page.  we're including the message
                 * id parameter so that we can be sure that we can accurately link the response
                 * and the response together.  we're going over the top for this because it's
                 * possible that they have two browsers logged in in the same session.  if they
                 * submitted two of these requests at the same time, we wouldn't know which response
                 * should go to which browser without the message id.
                 */
                closeProcessingPage(buildProcessorRequestString(Constants.RP_LOGIN_RESPONSE,
                        new String[]{Constants.MESSAGE_ID}, new String[]{String.valueOf(getMessageId())}));

            }
        } else {
            loadTerms();
            log.debug("set next page to " + Constants.PAGE_LOGIN);
            setNextPage(Constants.PAGE_LOGIN);
            setIsNextPageInContext(true);
            log.debug("all done processing");
        }
        log.debug("really all done processing");

    }

    /**
     * Loads up the terms.  This is just a tad sketchy, cuz we're not going to a processing page
     * but lets hope that things happen fast enough that it's a non-issue.  i wouldn't expect
     * a browser to time out that fast.
     * @throws TCWebException
     * @throws TimeExpiredException
     * @throws TimeOutException
     */
    protected void loadTerms() throws TCWebException, TimeExpiredException, TimeOutException {
        log.debug("loadTerms() called ...");
        ScreeningTermsRequest termsRequest = new ScreeningTermsRequest(getCompanyId());
        termsRequest.setServerID(ScreeningApplicationServer.WEB_SERVER_ID);

        try {
            send(termsRequest);
        } catch (ServerBusyException e) {
            throw new NavigationException("Sorry, the server is busy with a previous request.  " +
                    "When using this tool, please wait for a response before you attempt to proceed.");
        }
        ScreeningTermsResponse termsResponse = (ScreeningTermsResponse) receive(5000, false);

        if (termsResponse!=null)
            setDefault(CodingInterfaceConstants.TERMS, termsResponse.getMessage());

        log.debug("termsLoad complete");


    }


}
