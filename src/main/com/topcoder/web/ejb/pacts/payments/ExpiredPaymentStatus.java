/*
* ExpiredPaymentStatus
*
* Created Apr 19, 2007
*/
package com.topcoder.web.ejb.pacts.payments;

import com.topcoder.web.ejb.pacts.BasePayment;

/**
 * This class represents an Expired status for payments. 
 *
 * @author Pablo Wolfus (pulky)
 * @version $Id$
 */
public class ExpiredPaymentStatus extends BasePaymentStatus {

    /**
     * The payment status id
     */
    public static final Long ID = 68l;

    /**
     * Default constructor   
     */
    public ExpiredPaymentStatus() {
        super();
    }

    /**
     * @see com.topcoder.web.ejb.pacts.payments.BasePaymentStatus#getId()
     */
    @Override
    public Long getId() {
        return ID;
    }

    /**
     * @see com.topcoder.web.ejb.pacts.payments.BasePaymentStatus#inactiveCoder(com.topcoder.web.ejb.pacts.BasePayment)
     */
    @Override
    public int inactiveCoder(BasePayment payment) throws InvalidPaymentEventException {
        // do nothing
        return 0;
    }

    /**
     * @see com.topcoder.web.ejb.pacts.payments.BasePaymentStatus#newInstance()
     */
    @Override
    public BasePaymentStatus newInstance() {
        BasePaymentStatus newPaymentStatus = new ExpiredPaymentStatus();
        return newPaymentStatus;  
    }

}
