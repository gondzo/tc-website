package com.topcoder.web.privatelabel.controller.request.verisign06;

import com.topcoder.web.privatelabel.controller.request.BaseCredentialReminder;
import com.topcoder.web.privatelabel.Constants;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: Mar 24, 2006
 */
public class CredentialReminder extends BaseCredentialReminder {

    protected String getStartPage() {
        return Constants.VERISIGN_06_CREDENTIALS_PAGE;
    }

    protected String getSuccessPage() {
        return Constants.VERISIGN_06_CREDENTIALS_SENT_PAGE;
    }
}
