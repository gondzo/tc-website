package com.topcoder.web.privatelabel.controller.request;

import com.topcoder.web.privatelabel.model.FullRegInfo;
import com.topcoder.web.privatelabel.model.SimpleRegInfo;
import com.topcoder.web.privatelabel.Constants;
import com.topcoder.web.common.TCWebException;
import com.topcoder.servlet.request.FileUpload;
import com.topcoder.shared.util.logging.Logger;


/**
 * Provides some basic functionality for the different processors
 * involved in a registration process.
 * @author gpaul 06.26.2003
 */
abstract class FullRegBase extends SimpleRegBase {

    public FileUpload fu = null;
    /* does this request include a resume, it's possible that there is already
       a resume stored in the reg info in the persistor
    */
    protected static Logger log = Logger.getLogger(FullRegBase.class);

    protected abstract void registrationProcessing() throws TCWebException;

    public FullRegBase() {
    }


    protected void setDefaults(FullRegInfo info) {
        super.setDefaults(info);
        setDefault(Constants.CODER_TYPE, String.valueOf(info.getCoderType()));
        setDefault(Constants.RESUME, info.getFileName());
        setDefault(Constants.FILE_TYPE, String.valueOf(info.getFileType()));
    }

    protected void checkFullRegInfo(FullRegInfo info) throws TCWebException {
        super.checkRegInfo(info);
        //TODO check the specifics for the 2nd page
    }

    protected String getRequestParameter(String name) throws Exception {
        String ret = null;
        if (fu==null) {
            ret = getRequest().getParameter(name);
        } else {
            ret = fu.getParameter(name);
        }
        log.debug("getRequestParameter: " + name + " = " + ret);
        return ret;
    }

    protected SimpleRegInfo makeRegInfo() throws Exception {
        return new FullRegInfo(super.makeRegInfo());
    }


    public void setResume(FileUpload resume) {
        fu = resume;
    }

}
