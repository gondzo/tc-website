/**
 * DbQueryIterator.java
 * Aug 31, 2000
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
package com.coolservlets.forum.database;

import java.util.*;
//JDK1.1// import com.sun.java.util.collections.*;
import com.coolservlets.util.*;
import com.coolservlets.forum.*;

public class DbQueryIterator implements Iterator, ListIterator {

    //maintain an array of message ids to iterator through.
    private int [] messages;
    //points to the current message id that the user has iterated to.
    private int currentIndex = -1;

    private DbForumFactory factory;

    public DbQueryIterator(int [] messages, DbForumFactory factory) {
        this.messages = messages;
        this.factory = factory;
    }

    /**
     * Returns true if there are more messages left to iteratate through.
     */
    public boolean hasNext() {
        return (currentIndex+1 < messages.length);
    }
    /**
     * Returns the next message.  Not correct as is!!!
     */
    public Object next() throws java.util.NoSuchElementException {
        ForumMessage message = null;
        currentIndex++;
        if (currentIndex >= messages.length) {
            throw new java.util.NoSuchElementException();
        }
        try {
            message = factory.getMessage(messages[currentIndex]);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return message;
    }
    /**
     * For security reasons, the remove operation is not supported.
     */
    public void remove() {
        throw new UnsupportedOperationException();
    }
    /**
     * Returns true if there are more messages left to iterate through backwards.
     */
    public boolean hasPrevious() {
        return (currentIndex > 0);
    }
    /**
     * For security reasons, the add operation is not supported.
     */
    public void add(Object o) throws UnsupportedOperationException {
        throw new UnsupportedOperationException();
    }
   
    /**
     * For security reasons, the set operation is not supported.
     */
    public void set(Object o) throws UnsupportedOperationException {
        throw new UnsupportedOperationException();
    }
    /**
     * Returns the index number that would be returned with a call to next().
     */
    public int nextIndex() {
        return currentIndex+1;
    }
    /**
     * Returns the previous group.
     */
    public Object previous() throws java.util.NoSuchElementException {
        ForumMessage message = null;
        currentIndex--;
        if (currentIndex < 0) {
            currentIndex++;
            throw new java.util.NoSuchElementException();
        }
        try {
            message = factory.getMessage(messages[currentIndex]);
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return message;
    }
    /**
     * Returns the index number that would be returned with a call to previous().
     */
    public int previousIndex() {
        return currentIndex-1;
    }
}
