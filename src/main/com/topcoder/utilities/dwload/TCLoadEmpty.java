package com.topcoder.utilities.dwload;

/*****************************************************************************
 * TCLoadRequests.java
 *
 * TCLoadCoders loads applet requests from the RDBMS to the Data Warehouse.
 *
 * @author Matthew Lahut [TCid: Garzahd] (mlahut@andrew.cmu.edu)
 * Much thanks to Chris Hopkins [TCid: darkstalker] (chrism_hopkins@yahoo.com)
 * for the template
 * @version $Revision$
 *
 *****************************************************************************/
import java.sql.*;
import java.util.*;

import com.topcoder.common.DBMS;

public class TCLoadEmpty extends TCLoad {
  protected java.sql.Timestamp fStartTime = null;
  protected java.sql.Timestamp fLastLogTime = null;

  public TCLoadEmpty() {
    //DEBUG = false;
  }

  /**
   * This method is passed any parameters passed to this load
   */
  public boolean setParameters(Hashtable params) {
    return true;
  }

  /**
   * This method performs the load for the coder information tables
   */
  public boolean performLoad() {
    try {
        doContests();
        doRounds();
        doRooms();

      System.out.println("Ran successfully.");
      return true;
    }
    catch(Exception ex) {
      setReasonFailed(ex.getMessage());
      return false;
    }
  }

    private void doContests() throws Exception {
      PreparedStatement psSel = null;
      PreparedStatement psIns = null;

      ResultSet rs = null;
      int count = 0;
      int retVal = 0;

      try {
        // Our select statement
        fSql.setLength(0);
        fSql.append("SELECT rt.contest_id ");           // 1
        fSql.append("       ,rt.name ");     // 2
        fSql.append("       ,rt.start_date ");            // 3
        fSql.append("       ,rt.end_date ");            // 4
        fSql.append("       ,rt.status ");             // 5
        fSql.append("       ,rt.group_id");         // 7
        fSql.append("       ,rt.region_code ");         // 8
        fSql.append("       ,rt.ad_text ");       // 9
        fSql.append("       ,rt.ad_start ");           // 10
        fSql.append("       ,rt.ad_end ");           //11
        fSql.append("       ,rt.ad_task ");        //12
        fSql.append("       ,rt.ad_command ");        //13
        fSql.append("  FROM contest rt ");

        psSel = prepareStatement(fSql.toString(), SOURCE_DB);
        // Our insert statement
        fSql.setLength(0);
        fSql.append("INSERT INTO contest");
        fSql.append("       (contest_id ");           // 1
        fSql.append("       ,name ");     // 2
        fSql.append("       ,start_date ");            // 3
        fSql.append("       ,end_date ");            // 4
        fSql.append("       ,status ");             // 5
          fSql.append("       ,group_id");         // 7
        fSql.append("       ,region_code ");         // 8
        fSql.append("       ,ad_text ");       // 9
        fSql.append("       ,ad_start ");           // 10
        fSql.append("       ,ad_end ");           //11
        fSql.append("       ,ad_task ");        //12
        fSql.append("       ,ad_command) ");        //13
        fSql.append("VALUES (");
        fSql.append("?,?,?,?,?,?,?,?,?,?,");  // 10
        fSql.append("?,?)");                    // 13

        psIns = prepareStatement(fSql.toString(), TARGET_DB);
          rs = psSel.executeQuery();
          while (rs.next()) {

      psIns.clearParameters();
      psIns.setInt      (1,  rs.getInt      (1));  // request_id
      psIns.setString   (2,  rs.getString   (2));  // request_type_id
      psIns.setTimestamp(3,  rs.getTimestamp(3));  // open_window
      psIns.setTimestamp(4,  rs.getTimestamp(4));  // open_period
      psIns.setString   (5,  rs.getString   (5));  // request_type_id
      psIns.setInt      (6,  rs.getInt      (6));  // request_type_id
      psIns.setString   (7,  rs.getString   (7));  // request_type_id
      psIns.setString   (8,  rs.getString   (8));  // open_window
      psIns.setTimestamp(9, rs.getTimestamp (9));  // open_period
      psIns.setTimestamp(10, rs.getTimestamp(10));  // open_period
      psIns.setString   (11, rs.getString   (11));  // request_type_id
      psIns.setString   (12, rs.getString   (12));  // request_type_id

      //System.out.println(rs.getInt(1)+" "+rs.getInt(2)+" "+rs.getInt(3)+" "+rs.getInt(4)+" "+rs.getInt(5)+rs.getTimestamp(10).toString());
      try{
          retVal = psIns.executeUpdate();
      }catch(Exception e){//e.printStackTrace();
      }
          count += retVal;

          printLoadProgress(count, "request");
          }

        System.out.println("Records loaded for request: " + count);
      }
      catch (Exception sqle) {
          sqle.printStackTrace();
      }
      finally {
        close(rs);
        close(psSel);
        close(psIns);
      }
    }


    private void doRounds() throws Exception {
      PreparedStatement psSel = null;
      PreparedStatement psIns = null;

      ResultSet rs = null;
      int count = 0;
      int retVal = 0;

      try {
        // Our select statement
        fSql.setLength(0);
        fSql.append("SELECT rt.round_id");           // 1
        fSql.append("       ,rt.contest_id ");     // 2
        fSql.append("       ,rt.name ");            // 3
        fSql.append("       ,rt.status ");            // 4
        fSql.append("       ,rt.notes ");           // 8
        fSql.append("       ,rt.invitational ");        //9
        fSql.append("       ,rt.round_type_id ");       // 10
        fSql.append("       ,rl.round_type_desc ");       // 10
        fSql.append("  FROM round rt, round_type_lu rl");
        fSql.append(" WHERE rt.round_type_id = rl.round_type_id");

        psSel = prepareStatement(fSql.toString(), SOURCE_DB);
        // Our insert statement
        fSql.setLength(0);
        fSql.append("INSERT INTO round");
        fSql.append("       (round_id ");           // 1
        fSql.append("       ,contest_id ");           // 1
          fSql.append("       ,name ");            // 3
          fSql.append("       ,status ");            // 4
          fSql.append("       ,notes ");           // 8
          fSql.append("       ,invitational ");        //9
          fSql.append("       ,round_type_id" );       // 10
          fSql.append("       ,round_type_desc) ");       // 10
        fSql.append("VALUES (");
        fSql.append("?,?,?,?,?,?,?,?)");  // 7

        psIns = prepareStatement(fSql.toString(), TARGET_DB);
          rs = psSel.executeQuery();
          while (rs.next()) {

      psIns.clearParameters();
          psIns.setInt      (1,  rs.getInt      (1));  // request_id
          psIns.setInt      (2,  rs.getInt      (2));  // request_id
          psIns.setString   (3,  rs.getString   (3));  // request_type_id
          psIns.setString   (4,  rs.getString   (4));  // request_type_id
          psIns.setString   (5,  rs.getString   (5));  // request_type_id
          psIns.setInt      (6,  rs.getInt      (6));  // request_type_id
          psIns.setInt      (7,  rs.getInt      (7));  // request_type_id
          psIns.setString   (8,  rs.getString   (8));  // request_type_id

      //System.out.println(rs.getInt(1)+" "+rs.getInt(2)+" "+rs.getInt(3)+" "+rs.getInt(4)+" "+rs.getInt(5)+rs.getTimestamp(10).toString());

        try{
            retVal = psIns.executeUpdate();
        }catch(Exception e){}

          count += retVal;

          printLoadProgress(count, "request");
          }
        System.out.println("Records loaded for request: " + count);
      }
      catch (Exception sqle) {
          sqle.printStackTrace();
      }
      finally {
        close(rs);
        close(psSel);
        close(psIns);
      }
    }

    private void doRooms() throws Exception {
      PreparedStatement psSel = null;
      PreparedStatement psIns = null;

      ResultSet rs = null;
      int count = 0;
      int retVal = 0;

      try {
        // Our select statement
        fSql.setLength(0);
        fSql.append("SELECT rt.room_id");           // 1
        fSql.append("       ,rt.round_id ");     // 2
        fSql.append("       ,rt.name ");            // 3
        fSql.append("       ,rt.state_code ");            // 4
        fSql.append("       ,rt.country_code ");         // 5
        fSql.append("       ,rt.region_code ");       // 6
        fSql.append("       ,rt.division_id ");           //7
        fSql.append("       ,rt.room_type_id ");        //8
        fSql.append("       ,rt.eligible ");        //9
        fSql.append("       ,rt.unrated ");        //10
        fSql.append("  FROM room rt ");
        fSql.append("   WHERE NOT EXISTS ");
        fSql.append("       (SELECT * ");
        fSql.append("          FROM room ro ");
        fSql.append("         WHERE ro.room_id = rt.room_id ");
        fSql.append("           AND ro.room_type_id <> 1)");

        psSel = prepareStatement(fSql.toString(), SOURCE_DB);
        // Our insert statement
        fSql.setLength(0);
        fSql.append("INSERT INTO room");
        fSql.append("       (room_id ");           // 1
          fSql.append("       ,round_id ");     // 2
          fSql.append("       ,name ");            // 3
          fSql.append("       ,state_code ");             // 4
          fSql.append("       ,country_code ");         // 5
          fSql.append("       ,region_code ");           // 6
          fSql.append("       ,division_id ");           //7
            fSql.append("       ,room_type_id ");        //8
            fSql.append("       ,eligible ");        //9
          fSql.append("       ,unrated)");        //10
        fSql.append("VALUES (");
        fSql.append("?,?,?,?,?,?,?,?,?,?)");  // 10

        psIns = prepareStatement(fSql.toString(), TARGET_DB);
          rs = psSel.executeQuery();
          while (rs.next()) {

      psIns.clearParameters();
          psIns.setInt      (1,  rs.getInt      (1));  // request_id
          psIns.setInt      (2,  rs.getInt      (2));  // request_id
          psIns.setString   (3,  rs.getString   (3));  // request_type_id
          psIns.setString   (4,  rs.getString   (4));  // request_type_id
          psIns.setString   (5,  rs.getString   (5));  // request_type_id
          psIns.setString   (6,  rs.getString   (6));  // request_type_id
          psIns.setInt      (7, rs.getInt       (7));  // request_type_id
          psIns.setInt      (8, rs.getInt       (8));  // request_type_id
          psIns.setInt      (9,  rs.getInt      (9));  // request_type_id
          psIns.setInt      (10,  rs.getInt     (10));  // request_type_id

      //System.out.println(rs.getInt(1)+" "+rs.getInt(2)+" "+rs.getInt(3)+" "+rs.getInt(4)+" "+rs.getInt(5)+rs.getTimestamp(10).toString());
          try{
              retVal = psIns.executeUpdate();
          }catch(Exception e){}
          count += retVal;

          printLoadProgress(count, "request");
          }
        System.out.println("Records loaded for request: " + count);
      }
      catch (Exception sqle) {
          sqle.printStackTrace();
      }
      finally {
        close(rs);
        close(psSel);
        close(psIns);
      }
    }





}
