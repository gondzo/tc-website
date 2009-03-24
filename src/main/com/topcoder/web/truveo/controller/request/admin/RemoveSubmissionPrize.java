package com.topcoder.web.truveo.controller.request.admin;

import com.topcoder.web.truveo.model.Prize;
import com.topcoder.web.truveo.model.Submission;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: Aug 7, 2007
 */
public class RemoveSubmissionPrize extends SubmissionPrizeBase {
    protected void submissionProcessing(Submission s, Prize p) throws Exception {
        s.removePrize(p);
    }
}

