package com.topcoder.dde.persistencelayer.interfaces;

import javax.ejb.CreateException;
import javax.ejb.EJBLocalHome;
import javax.ejb.FinderException;
import java.sql.Timestamp;

/**
 * The local home interface representing the CMP bean for the comp_versions table.
 *
 * @version     1.0
 * @author      David Messinger
 */
public interface LocalDDECompVersionDatesHistoryHome extends EJBLocalHome {

    /**
     * The EJB reference name.
     */
    public static final String EJB_REF_NAME = "java:comp/env/ejb/DDECompVersionDatesHistoryEJB";

    /**
     * Locates an entity object using a primary key.
     *
     * @param key                   the primary key value to find.
     * @return the local interface that represents an entity object.
     * @throws FinderException      an application level error occurred during the find operation.
     */
    LocalDDECompVersionDatesHistory findByPrimaryKey(Long key) throws FinderException;

    /**
     * Creates an entity object.
     *

     * @return the local interface of the created entity object.
     * @throws CreateException      an application level error occurred during the create operation.
     */
    LocalDDECompVersionDatesHistory create(long componentVersionId, long phaseId, Timestamp postingDate, Timestamp initialSubmissionDate, Timestamp finalSubmissionDate, Timestamp winnerAnnouncedDate, Timestamp estimatedDevDate, double price, long statusId, long levelId,
                                           Timestamp phaseCompleteDate, Timestamp aggregationCompleteDate, Timestamp reviewCompleteDate, Timestamp screeningCompleteDate, String phaseCompleteDateComment,
                                           String aggregationCompleteDateComment, String reviewCompleteDateComment, String screeningCompleteDateComment, String initialSubmissionDateComment, String finalSubmissionDateComment, String winnerAnnouncedDateComment, Timestamp productionDate, String productionDateComment)
            throws CreateException;


}
