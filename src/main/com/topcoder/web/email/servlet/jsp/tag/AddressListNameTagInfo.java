package com.topcoder.web.email.servlet.jsp.tag;


import javax.servlet.jsp.tagext.*;


public class AddressListNameTagInfo extends TagExtraInfo {

    public VariableInfo[] getVariableInfo(TagData data) {

        return new VariableInfo[]{

            new VariableInfo(data.getId(),

                    "java.lang.String",

                    true,

                    VariableInfo.NESTED)

        };

    }

}

