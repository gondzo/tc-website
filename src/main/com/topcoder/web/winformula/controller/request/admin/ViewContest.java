package com.topcoder.web.winformula.controller.request.admin;

import com.topcoder.web.common.StringUtils;
import com.topcoder.web.winformula.Constants;
import com.topcoder.web.winformula.dao.WinformulaDAOUtil;
import com.topcoder.web.winformula.model.Contest;
import com.topcoder.web.winformula.model.ContestStatus;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: Jul 18, 2006
 */
public class ViewContest extends Base {

    protected void dbProcessing() throws Exception {
        String contestId = getRequest().getParameter(Constants.CONTEST_ID);

        if (!"".equals(StringUtils.checkNull(contestId))) {
            //load
            Contest contest = WinformulaDAOUtil.getFactory().getContestDAO().find(new Long(contestId));
            loadEditContestData(contest);
        } else {
            setDefault(Constants.CONTEST_STATUS_ID, ContestStatus.UNACTIVE);
            loadGeneralEditContestData();
        }
        setNextPage("/admin/editContest.jsp");
        setIsNextPageInContext(true);

    }
}
