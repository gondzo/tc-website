package com.topcoder.web.tc.view.reg.tag;

import com.topcoder.common.web.data.Degree;
import com.topcoder.common.web.util.Cache;
import com.topcoder.ejb.DataCache.DataCache;
import com.topcoder.shared.util.TCContext;

import javax.naming.InitialContext;
import javax.servlet.jsp.JspException;
import java.util.ArrayList;

public class DegreeSelect
        extends Select {
    String getOptionValue(Object o) {
        return "" + ((Degree) o).getDegreeId();
    }

    String getOptionText(Object o) {
        return ((Degree) o).getDegreeDesc();
    }

    ArrayList getSelectOptions()
            throws JspException {
        ArrayList degrees = new ArrayList();
        InitialContext context = null;
        try {
            context = TCContext.getInitial();
            DataCache dataCache = Cache.get(context);
            degrees = dataCache.getDegrees();
        } catch (Exception e) {
            throw new JspException(e.toString());
        } finally {
            if (context != null) {
                try {
                    context.close();
                } catch (Exception e) {
                }
            }
        }
        return degrees;
    }
}
