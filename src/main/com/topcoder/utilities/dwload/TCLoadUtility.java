package com.topcoder.utilities.dwload;

/*****************************************************************************
 * TCLoadUtility.java
 *
 * This is the load utility class for TopCoder loads. Using this class, you
 * can perform any of the loads identified by classes derived from TCLoad.
 *
 * TODO: Add explanation of command line options/XML files here
 *
 * @author Christopher Hopkins [TCid: darkstalker] (chrism_hopkins@yahoo.com)
 * @version $Revision$
 * @internal Log of Changes:
 *           $Log$
 *           Revision 1.1.4.1  2002/07/09 23:41:27  gpaul
 *           switched to use com.topcoder.shared.util.logging.Logger
 *
 *           Revision 1.1  2002/04/02 21:54:14  gpaul
 *           moving the load over from 153 cvs
 *
 *           Revision 1.1.2.2  2002/03/19 18:30:42  gpaul
 *           log.debug instead of system.out.println
 *
 *           Revision 1.1.2.1  2002/03/16 20:17:02  gpaul
 *           moving these over from the member dev area.  i've added  a couple fixes to exclude admins from queries.
 *
 *           Revision 1.8  2002/03/02 15:24:28  stalker
 *           Modified to print a FAILURE message if a load fails
 *
 *           Revision 1.7  2002/02/20 15:10:38  stalker
 *           Removed debug statements
 *
 *
 *****************************************************************************/
import java.io.*;
import java.sql.*;
import java.util.*;

import javax.xml.parsers.*;
import org.w3c.dom.*;
import com.topcoder.shared.util.logging.Logger;
import com.topcoder.shared.util.*;

public class TCLoadUtility {
  private static Logger log = Logger.getLogger(TCLoadUtility.class);
  /**
   * This holds any error message that might occur when performing a particular
   * load. So, if a load fails, we can print something nice to the user.
   */
  private static StringBuffer sErrorMsg = new StringBuffer(128);

  /**
   * This variable holds the name of the JDBC driver we are using to connect
   * to the databases.
   */
  private static String sDriverName = "com.informix.jdbc.IfxDriver";

  /**
   * The main method parses the command line options (or XML file when we
   * decide to go that route), determines the class name of the load to run,
   * parses any additional parameters for that load and runs the load.
   */
  public static void main(String[] args) {
    // First, parse the argument list and come up with a Hashtable of
    // arguments to this load. The only required argument is -load
    // "classname" which specifies which load to run. If we have a
    // -xmlfile argument as the first argument, we have been given an
    // XML file to load which specifies which loads to run and their
    // parameters. So, we need to parse that appropriately. Otherwise,
    // we do a normal, single load
    if(args.length > 1 && args[0].equals("-xmlfile")) {
	runXMLLoad(args[1]);
    }
    else {
      Hashtable params = parseArgs(args);

      checkDriver();

      String loadclass = (String)params.get("load");
      runTCLoad(loadclass, params);
    }
  }

  /**
   * This method runs a particular load(s) specified by the XML file
   * passed on the command line.
   */
  private static void runXMLLoad(String xmlFileName) {
    try {
      FileInputStream f = new FileInputStream(xmlFileName);
      DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
      DocumentBuilder dombuild = dbf.newDocumentBuilder();
      Document doc = dombuild.parse(f);

      Element root = doc.getDocumentElement();
      NodeList nl = root.getChildNodes();

      String sourceDBURL = null, targetDBURL = null;
      Node node;
      int i=1;

      // Check to see if we have a sourceDBURL or targetDBURL prior to loadlist
      // NOTE: There is a #text node after every child node in the Document so
      // we need to skip over those to get the right children.
      if(i < nl.getLength()) {
        node = nl.item(i);
        if(node.getNodeName().equals("driver")) {
          sDriverName = node.getFirstChild().getNodeValue();
          i += 2;
        }
      }

      if(i < nl.getLength()) {
        node = nl.item(i);
        if(node.getNodeName().equals("sourcedb")) {
          sourceDBURL = node.getFirstChild().getNodeValue();
          i += 2;
        }
      }

      if(i < nl.getLength()) {
        node = nl.item(i);
        if(node.getNodeName().equals("targetdb")) {
          targetDBURL = node.getFirstChild().getNodeValue();
          i += 2;
        }
      }

      checkDriver();

      Hashtable params = null;
      for(; i<nl.getLength(); i += 2) {
        Node n = nl.item(i);

	// Build new Hashtable for this load
        params = new Hashtable();
        if(sourceDBURL != null) 
          params.put("sourcedb", sourceDBURL);
        if(targetDBURL != null) 
          params.put("targetdb", targetDBURL);

        fillParams(params, n);
        runTCLoad((String)params.get("load"), params);
      }
    }
    catch(Exception ex) {
      ex.printStackTrace();
      sErrorMsg.setLength(0);
      sErrorMsg.append("Load of XML file failed:\n");
      sErrorMsg.append(ex.getMessage());
      fatal_error();
    }
  }

  /**
   * This method fills a Hashtable with the load class as well as any
   * parameters passed to the load. We then pass that off to
   * runTCLoad.
   */
  private static void fillParams(Hashtable params, Node n) throws Exception {
    NodeList nl = n.getChildNodes();
    Node node;
    int i=1;

    // Check to see if we have a sourceDBURL or targetDBURL prior to loadlist.
    // Again, we need to skip over the #text nodes to get to the right children
    if(i < nl.getLength()) {
      node = nl.item(i);
      if(node.getNodeName().equals("sourcedb")) {
        params.put("sourcedb", node.getFirstChild().getNodeValue());
        i += 2;
      }
    }

    if(i < nl.getLength()) {
      node = nl.item(i);
      if(node.getNodeName().equals("targetdb")) {
        params.put("targetdb", node.getFirstChild().getNodeValue());
        i += 2;
      }
    }

    if(i < nl.getLength()) {
      node = nl.item(i);
      if(node.getNodeName().equals("classname")) {
        params.put("load", node.getFirstChild().getNodeValue());
        i += 2;
      }
    }

    if(i < nl.getLength()) {
      node = nl.item(i);
      if(node.getNodeName().equals("parameterList")) {
        NodeList nl2 = node.getChildNodes();
        for(int j=1; j<nl2.getLength(); j += 2) {
          Node n2 = nl2.item(j);
          NamedNodeMap nnm = n2.getAttributes();
          params.put(nnm.getNamedItem("name").getNodeValue(),
                     nnm.getNamedItem("value").getNodeValue());
        }
      }
    }
  }

  /**
   * This method runs a particular load specified by loadclass and
   * with parameters specified in the params Hashtable.
   */
  private static void runTCLoad(String loadclass, Hashtable params) {
    if(loadclass == null) {
      sErrorMsg.setLength(0);
      sErrorMsg.append("Please specify a load to run using the -load option.");
      fatal_error();
    }

    Class loadme = null;
    try {
      loadme = Class.forName(loadclass);
    }
    catch(Exception ex) {
      sErrorMsg.setLength(0);
      sErrorMsg.append("Unable to load class for load: ");
      sErrorMsg.append(loadclass);
      sErrorMsg.append(". Cannot continue.\n");
      sErrorMsg.append(ex.getMessage());
      fatal_error();
    }

    Object ob = null;
    try {
      ob = loadme.newInstance();
      if(ob == null)
        throw new Exception("Object is null after newInstance call.");
    }
    catch(Exception ex) {
      sErrorMsg.setLength(0);
      sErrorMsg.append("Unable to create new instance of class for load: ");
      sErrorMsg.append(loadclass);
      sErrorMsg.append(". Cannot continue.\n");
      sErrorMsg.append(ex.getMessage());
      fatal_error();
    }

    if(!(ob instanceof TCLoad)) {
      sErrorMsg.setLength(0);
      sErrorMsg.append(loadclass + " is not an instance of TCLoad. You must ");
      sErrorMsg.append("extend TCLoad to create a TopCoder database load.");
      fatal_error();
    }

    TCLoad load = (TCLoad)ob;
    if(!load.setParameters(params)) {
      sErrorMsg.setLength(0);
      sErrorMsg.append(load.getReasonFailed());
      fatal_error();
    }

    setDatabases(load, params);
    if(!doLoad(load))
      fatal_error();
  }

  public static boolean doLoad(TCLoad tcload) {
    try {
      log.info("Creating source database connection...");
      tcload.buildSourceDBConn();
      log.info("Success!");
    }
    catch(SQLException sqle) {
      sErrorMsg.setLength(0);
      sErrorMsg.append("Creation of source DB connection failed. ");
      sErrorMsg.append("Cannot continue.\n");
      sErrorMsg.append(sqle.getMessage());
      return false;
    }

    try {
      log.info("Creating target database connection...");
      tcload.buildTargetDBConn();
      log.info("Success!");
    }
    catch(SQLException sqle2) {
      sErrorMsg.setLength(0);
      sErrorMsg.append("Creation of target DB connection failed. ");
      sErrorMsg.append("Cannot continue.\n");
      sErrorMsg.append(sqle2.getMessage());
      return false;
    }

    if(!tcload.performLoad()) {
      sErrorMsg.setLength(0);
      sErrorMsg.append(tcload.getReasonFailed());
      closeLoad(tcload);
      return false;
    }

    closeLoad(tcload);
    return true;
  }

  /**
   * This method converts an array of Strings into a Hashtable of
   * arguments. The arguments form keys seperated by a -. So, an
   * argument list of "-test one -test2 two" will create a Hashtable
   * with two keys, "test" and "test2" with corresponding values of
   * "one" and "two". The load is then passed the Hashtable and can
   * retrieve the arguments by name.
   */
  protected static Hashtable parseArgs(String[] args) {
    Hashtable hash = new Hashtable();
    for(int i=0; i < args.length - 1; i += 2) {
      if(!args[i].startsWith("-")) {
        sErrorMsg.setLength(0);
        sErrorMsg.append("Argument " + (i+1) + " (" + args[i] +
                         ") should start with a -.");
        fatal_error();
      }

      String key = args[i].substring(1);
      String value = args[i + 1];
      hash.put(key, value);
    }

    String tmp;
    tmp = (String)hash.get("driver");
    if(tmp != null) {
      sDriverName = tmp;
    }

    return hash;
  }

  protected static void closeLoad(TCLoad tcload) {
    try {
      tcload.closeDBConnections();
    }
    catch(SQLException sqle) {
      DBMS.printSqlException(true, sqle);
    }
  }

  protected static void setUsageError(String msg) {
    sErrorMsg.setLength(0);
    sErrorMsg.append(msg);
    sErrorMsg.append("TCLoadUtility parameters:\n");
    sErrorMsg.append("   -load class   : Classname of load to run.\n");
    sErrorMsg.append("   -sourcedb URL : URL of source database.\n");
    sErrorMsg.append("   -targetdb URL : URL of target database.\n");
    fatal_error();
  }

  protected static void setDatabases(TCLoad load, Hashtable params) {
    String tmp = (String)params.get("sourcedb");
    if(tmp == null)
      setUsageError("Please specify a source database.\n");

    load.setSourceDBURL(tmp);

    tmp = (String)params.get("targetdb");
    if(tmp == null)
      setUsageError("Please specify a target database.\n");

    load.setTargetDBURL(tmp);
  }

  private static void fatal_error() {
    log.error("*******************************************");
    log.error("FAILURE: " + sErrorMsg.toString());
    log.error("*******************************************");
    System.exit(-1);
  }

  /**
   * This method performs a Class.forName on the driver used for this
   * load. If it fails, the driver is not available and the load
   * fails.
   */
  private static void checkDriver() {
    try {
      Class.forName(sDriverName);
    }
    catch(Exception ex) {
      sErrorMsg.setLength(0);
      sErrorMsg.append("Unable to load driver ");
      sErrorMsg.append(sDriverName);
      sErrorMsg.append(". Cannot continue.");
      fatal_error();
    }
  }
}
