package com.topcoder.web.stat.bean;

/**
 * This class represents a bean holding the QuickStat display name and url.  It serves as a container for an
 * item in quick stat drop-down list.
 *
 *
 *
 * @version $Revision$
 *  Log of Changes:
 *           $Log$
 *           Revision 1.2  2002/07/12 17:15:50  gpaul
 *           merged baby
 *
 *           Revision 1.1.1.1.4.2  2002/07/09 14:42:49  gpaul
 *           no message
 *
 *           Revision 1.1.1.1  2002/04/02 17:20:38  steveb
 *           initial web load into cvs
 *
 *           Revision 1.1.2.1  2002/03/16 20:18:09  gpaul
 *           moving these over from the member dev area.
 *
 *           Revision 1.1  2002/02/26 04:46:40  tbone
 *           committed
 *
 *
 */
public class QuickStatBean {
    //generic mapping
    private String msDisplayName;
    private String msURL;

    public QuickStatBean() {
        msDisplayName = "";
        msURL = "";
    }

    public QuickStatBean(String sKey, String sVal) {
        msDisplayName = sKey;
        msURL = sVal;
    }

    /**
     * Gets the URL for this QuickStat bean
     * @param none
     * @return the URL
     */
    public String getURL() {
        return msURL;
    }


    /**
     * Sets the specific URL for this QuickStat bean
     * @param String  The URL
     * @return none
     */
    public void setURL(String sURL) {
        msURL = sURL;
    }

    /**
     * Gets the Display Name for this QuickStat bean
     * @param none
     * @return the Display Name
     */
    public String getDisplayName() {
        return msDisplayName;
    }


    /**
     * Sets the Displayed Name for this QuickStat bean
     * @param String  The Display Name
     * @return none
     */
    public void setDipslayName(String sName) {
        msDisplayName = sName;
    }
}