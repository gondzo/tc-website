package com.topcoder.common.web.data;

import java.util.ArrayList;
import java.io.Serializable;
import com.topcoder.common.web.error.*;
import com.topcoder.common.web.xml.*;
import com.topcoder.common.web.util.*;


public class CoderReferral implements Serializable, Base, Modifiable {

  private int coderId;
  private Referral referral;
  private int referenceId;
  private String other;
  private String modified;

  public CoderReferral() {
    coderId = 0;
    referral = new Referral();
    referenceId = 0;
    other = "";
    modified = "";
  }

  //////////////////////////////////////////////////////////////////////////
  public void toggleModified() {
  //////////////////////////////////////////////////////////////////////////
    if ( getModified().equals("S") ) setModified("U");
    if ( getModified().equals("") ) setModified("A");
  }

// set
  public void setAllModifiedStable() throws TCException {
    setModified("S");
  }

  //Set
  public void setCoderId(int coderId) {
    this.coderId = coderId;
  }

  public void setReferral ( Referral referral ) {
    this.referral = referral;
  }

  public void setReferenceId(int referenceId) {
    this.referenceId = referenceId;
  }

  public void setOther(String other) {
    this.other = other;
  }

  public void setModified(String modified) {
    this.modified = modified;
  }

  // Get
  public int getCoderId() {
    return coderId; 
  }
 
  public Referral getReferral() {
    return referral;
  }

  public int getReferenceId() {
    return referenceId;
  }

  public String getOther() {
    return other;
  }

  public String getModified() {
    return modified;
  }

  public RecordTag getXML() throws TCException {
    RecordTag result = null;
    try {
      result = new RecordTag("CoderReferral");
      result.addTag( new ValueTag("CoderId", coderId));
      result.addTag( referral.getXML() );
      result.addTag( new ValueTag("ReferenceId", referenceId));
      result.addTag( new ValueTag("Other", other) );
      result.addTag( new ValueTag("Modified", modified) );
    } catch (Exception e) {
      throw new TCException("com.topcoder.common.data.CoderReferral.getXML:ERROR:\n"+e);
    }
    return result;
  }

}
