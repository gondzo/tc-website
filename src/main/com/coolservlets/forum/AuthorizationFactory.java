/**
 * AuthorizationFactory.java
 * June 22, 2000
 *
 * Copyright (C) 2000 CoolServlets.com. All rights reserved.
 *
 * ===================================================================
 * The Apache Software License, Version 1.1
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * 3. The end-user documentation included with the redistribution,
 *    if any, must include the following acknowledgment:
 *       "This product includes software developed by
 *        CoolServlets.com (http://www.coolservlets.com)."
 *    Alternately, this acknowledgment may appear in the software itself,
 *    if and wherever such third-party acknowledgments normally appear.
 *
 * 4. The names "Jive" and "CoolServlets.com" must not be used to
 *    endorse or promote products derived from this software without
 *    prior written permission. For written permission, please
 *    contact webmaster@coolservlets.com.
 *
 * 5. Products derived from this software may not be called "Jive",
 *    nor may "Jive" appear in their name, without prior written
 *    permission of CoolServlets.com.
 *
 * THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
 * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
 * OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED.  IN NO EVENT SHALL COOLSERVLETS.COM OR
 * ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 * LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
 * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 * ====================================================================
 *
 * This software consists of voluntary contributions made by many
 * individuals on behalf of CoolServlets.com. For more information
 * on CoolServlets.com, please see <http://www.coolservlets.com>.
 */

package com.coolservlets.forum;



/**
 * Provides authorization service for the Jive forum system. The service
 * is pluggable to allow easier integration for custom authentication.
 */
public abstract class AuthorizationFactory {

    private static Object lock = new Object();
    private static String classname =
            "com.coolservlets.forum.database.DbAuthorizationFactory";
    private static AuthorizationFactory factory = null;

    public static AuthorizationFactory getInstance() {
        if (factory == null) {
            synchronized (lock) {
                if (factory == null) {
                    if (classname != null) {
                        try {
                            Class c = Class.forName(classname);
                            factory = (AuthorizationFactory) c.newInstance();
                        } catch (Exception e) {
                            System.err.println("Exception loading class: " + e);
                            e.printStackTrace();
                            return null;
                        }
                    } else {
                        System.err.println("Error: could not create AuthorizationFactory " +
                                "because the AuthorizationFactory classname has not been set. " +
                                "Be sure to call the setClass method.");
                        return null;
                    }
                }
            }
        }
        return factory;
    }

    /**
     * Gets authorization for a user.
     *
     * @throws UnauthorizedException if authentication failed.
     */
    public abstract Authorization getAuthorization(String username,
                                                   String password) throws UnauthorizedException;

    /**
     * Gets the anonymous user authorization.
     */
    public abstract Authorization getAnonymousAuthorization();
}
