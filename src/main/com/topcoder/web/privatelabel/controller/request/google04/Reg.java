package com.topcoder.web.privatelabel.controller.request.google04;

import com.topcoder.web.privatelabel.Constants;
import com.topcoder.web.privatelabel.controller.request.*;
import com.topcoder.web.privatelabel.model.SimpleRegInfo;
import com.topcoder.shared.dataAccess.resultSet.*;
import com.topcoder.web.common.TCWebException;
import com.topcoder.shared.dataAccess.*;

import java.util.*;

public class Reg extends FullReg {
    protected void setNextPage() {
/*
        //reg closed
        setNextPage(Constants.GOOGLE_REG_CLOSED_PAGE);
        setIsNextPageInContext(true);
*/
        setNextPage(Constants.GOOGLE04_REG_PAGE);
        setIsNextPageInContext(true);
    }
    
    protected ResultSetContainer getCountryList() throws TCWebException {
        try {
            Request request = new Request();
            request.setContentHandle("country_list_google");
            Map map = getDataAccess(transDb, true).getData(request);
            if (map == null)
                throw new Exception("error getting country list from db");
            else
                return (ResultSetContainer) map.get("country_list_google");
        } catch (Exception e) {
            throw new TCWebException(e);
        }
    }
}
