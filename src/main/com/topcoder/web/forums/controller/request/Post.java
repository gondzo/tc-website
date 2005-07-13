/*
 * Created on Apr 29, 2005
 */
package com.topcoder.web.forums.controller.request;

import com.jivesoftware.forum.ForumMessage;
import com.jivesoftware.forum.ForumThread;
import com.jivesoftware.forum.Forum;

import com.topcoder.shared.security.ClassResource;
import com.topcoder.web.common.PermissionException;
import com.topcoder.web.common.StringUtils;
import com.topcoder.web.forums.ForumConstants;

/**
 * @author mtong
 * 
 * Provides logic to work with a message after a user decides to create a new thread, or edit/reply 
 * to an existing message.
 */
public class Post extends ForumsProcessor {

	protected void businessProcessing() throws Exception {
		super.businessProcessing();
        if (isGuest()) {
            throw new PermissionException(getUser(), new ClassResource(this.getClass()));
        }
		
		String postMode = getRequest().getParameter(ForumConstants.POST_MODE);
        long forumID = Long.parseLong(getRequest().getParameter(ForumConstants.FORUM_ID));
        String threadIDStr = StringUtils.checkNull(getRequest().getParameter(ForumConstants.THREAD_ID));
        String messageIDStr = StringUtils.checkNull(getRequest().getParameter(ForumConstants.MESSAGE_ID));
        
		setDefault(ForumConstants.FORUM_ID, getRequest().getParameter(ForumConstants.FORUM_ID));
		setDefault(ForumConstants.THREAD_ID, getRequest().getParameter(ForumConstants.THREAD_ID));
		setDefault(ForumConstants.MESSAGE_ID, getRequest().getParameter(ForumConstants.MESSAGE_ID));
		setDefault(ForumConstants.POST_MODE, postMode);
		
        Forum forum = forumFactory.getForum(forumID);
        if (!messageIDStr.equals("") && !threadIDStr.equals("")) {
            ForumMessage message = forumFactory.getMessage(Long.parseLong(messageIDStr));
            String replySubject = message.getSubject();
            String editSubject = message.getSubject();
            if (!replySubject.startsWith("Re: ")) {
                replySubject = "Re: " + replySubject;
            }
            if (!editSubject.startsWith("Edit: ")) {
                editSubject = "Edit: " + editSubject;
            }
            
            if (postMode.equals("Reply")) {
                setDefault(ForumConstants.MESSAGE_SUBJECT, replySubject);
            }
            if (postMode.equals("Edit")) {
                setDefault(ForumConstants.MESSAGE_SUBJECT, message.getSubject());
                setDefault(ForumConstants.MESSAGE_BODY, message.getUnfilteredBody());
            }
            getRequest().setAttribute("message", message);
            getRequest().setAttribute("thread", message.getForumThread());
        }
	
		getRequest().setAttribute("forumFactory", forumFactory);
        getRequest().setAttribute("forum", forum);
        getRequest().setAttribute("postMode", postMode);
		
        setNextPage("/post.jsp");
		setIsNextPageInContext(true);
	}
}