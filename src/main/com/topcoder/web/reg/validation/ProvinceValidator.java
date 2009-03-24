package com.topcoder.web.reg.validation;

import com.topcoder.web.common.validation.*;
import com.topcoder.web.reg.Constants;

/**
 * @author dok
 * @version $Revision$ Date: 2005/01/01 00:00:00
 *          Create Date: May 9, 2006
 */
public class ProvinceValidator implements Validator {

    public ValidationResult validate(ValidationInput input) {
        ValidationResult ret = new NonEmptyValidator("Please enter your province.").validate(input);
        if (ret.isValid()) {
            return new SizeValidator(1, Constants.MAX_PROVINCE_LENGTH, "province").validate(input);
        } else {
            //if they didn't enter a province, that's ok, it's not required.
            return ValidationResult.SUCCESS;
        }

    }
}
