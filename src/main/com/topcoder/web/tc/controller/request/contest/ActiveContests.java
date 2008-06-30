/*
 * Copyright (c) 2001-2008 TopCoder Inc.  All Rights Reserved.
 */
package com.topcoder.web.tc.controller.request.contest;

import com.topcoder.web.common.TCWebException;
import com.topcoder.web.tc.Constants;

/**
 * Copyright (c) 2001-2008 TopCoder, Inc. All rights reserved.
 * Only for use in connection with a TopCoder competition.
 *
 * @author pulky
 * @version $Id$
 * Create Date: Apr 16, 2008
 */
public class ActiveContests extends ActiveContestsBase {
    protected void developmentProcessing() throws TCWebException {
        int projectTypeId =  com.topcoder.web.tc.controller.request.development.Base.getProjectTypeId(getRequest());

        if (Constants.ASSEMBLY_PROJECT_TYPE==projectTypeId ||
                Constants.ARCHITECTURE_PROJECT_TYPE==projectTypeId ||
                Constants.APPLICATION_TESTING_PROJECT_TYPE==projectTypeId) {
            setProjectType(projectTypeId);
        } else {
            throw new TCWebException("Invalid project type specified " + projectTypeId);
        }
        
        super.developmentProcessing();
    }
    
    protected String getCommandName() {
        if (getProjectType()==Constants.ARCHITECTURE_PROJECT_TYPE) {
            return "active_architecture_contests";            
        } else {
            return super.getCommandName();
        }
    }
    
    @Override
    protected Boolean hasDR() {
        return Boolean.TRUE;
    }
}
