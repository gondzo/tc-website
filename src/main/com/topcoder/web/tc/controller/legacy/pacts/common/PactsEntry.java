/******************************************************************************\
 *
 * File:          PactsEntry.java
 * Creation date: March 05, 2002 10:19
 * Author:        Matt Murphy
 * Purpose:       Store the more commonly requested information for a tax form
 * See:           TaxFormHeader.java
 *                ResultSetContainer.java
 *
 * Copyright 2002, TopCoder, Inc
 * All rights are reserved. Reproduction in whole or part is prohibited
 * without the written consent of the copyright owner.
 *
 \******************************************************************************/

package com.topcoder.web.tc.controller.legacy.pacts.common;

import com.topcoder.shared.dataAccess.resultSet.ResultSetContainer;
import com.topcoder.shared.util.logging.Logger;
import com.topcoder.web.tc.controller.legacy.pacts.bean.pacts_internal.dispatch.*;

import java.util.Map;

public class PactsEntry implements PactsConstants {

    private static Logger log = Logger.getLogger(PactsEntry.class);

    public int _type;
    public long _id1;
    public long _id2;

    public PactsEntry(Map data, int row) {
        ResultSetContainer rsc = (ResultSetContainer) data.get(ENTRY_HEADER_LIST);
        if (rsc == null) {
            log.error("There was no " + ENTRY_HEADER_LIST + " result set container!");
            setDefaults();
            return;
        }
        int rowCount = rsc.getRowCount();
        if (row >= rowCount || row < 0) {
            log.error("Bad row: " + row + " Size: " + rowCount);
            setDefaults();
            return;
        }
        ResultSetContainer.ResultSetRow rsr = rsc.getRow(row);
        _type = TCData.getTCInt(rsr, OBJECT_TYPE, 0, true);
        _id1 = TCData.getTCLong(rsr, "first_id", 0, true);
        _id2 = TCData.getTCLong(rsr, "second_id", 0, true);
    }

    public Object get() {
        try {
            switch (_type) {
                case PAYMENT_OBJ:
                    return getPayment();
                case AFFIDAVIT_OBJ:
                    return getAffidavit();
                case CONTRACT_OBJ:
                    return getContract();
                case USER_TAX_FORM_OBJ:
                    return getUserTaxForm();
                case USER_PROFILE_OBJ:
                    return getUserProfile();
            }
        } catch (Exception e) {
            log.error("Exception caught in PactsEntry.get():");
            e.printStackTrace();
        }
        return null;
    }

    public Payment getPayment() throws Exception {
        InternalDispatchPayment bean =
                new InternalDispatchPayment(null, null);

        return bean.get(_id1);
    }

    public Affidavit getAffidavit() throws Exception {
        InternalDispatchAffidavit bean =
                new InternalDispatchAffidavit(null, null);

        return bean.get(_id1);
    }

    public Contract getContract() throws Exception {
        InternalDispatchContract bean =
                new InternalDispatchContract(null, null);

        return bean.get(_id1);
    }

    public TaxForm getUserTaxForm() throws Exception {
        InternalDispatchUserTaxForm bean =
                new InternalDispatchUserTaxForm(null, null);

        return bean.get(_id1, _id2);
    }

    public UserProfile getUserProfile() throws Exception {
        InternalDispatchUserProfile bean =
                new InternalDispatchUserProfile(null, null);

        return bean.get(_id1);
    }

    private void setDefaults() {
        _type = 0;
        _id1 = 0;
        _id2 = 0;
    }
}
