package com.topcoder.shared.dataAccess;

import com.topcoder.shared.util.TCContext;
import com.topcoder.shared.util.logging.Logger;

import javax.naming.Context;
import javax.sql.DataSource;
import java.sql.Connection;
import java.util.Map;

/**
 * This bean processes a Request and returns the data from the data warehouse.
 *
 * @author  Greg Paul
 * @version $Revision$
 *  Log of Changes:
 *           $Log$
 *           Revision 1.2  2002/07/23 23:37:21  gpaul
 *           use DataSources rather than DBMS to get connections
 *
 *           Revision 1.1  2002/07/19 00:07:17  gpaul
 *           a DataAccessInt to handle running QueryRequests
 *
 * @see     RequestInt
 */
public class DWQueryDataAccess implements DataAccessInt {
    private static Logger log = Logger.getLogger(DWQueryDataAccess.class);

    /**
     * This method passes a query request and passes the contents
     * of that request and a connection to the data warehouse
     * to the QueryRunner.
     *
     * @param   request A <tt>RequestInt</tt> request object containing a number
     * of queries.
     * @return  A map of the query results, where the keys are strings
     * of query names and the values are <tt>ResultSetContainer</tt> objects.
     * @throws  Exception if there was an error encountered while retrieving
     * the data.
     */
    public Map getData(RequestInt request) throws Exception {
        try {
            Context ctx = TCContext.getInitial();
            DataSource ds = (DataSource) ctx.lookup("DW");
            Connection conn = ds.getConnection();
            QueryRunner qr = new QueryRunner(conn);
            Map map = qr.executeCommand(request.getProperties());
            if (conn != null && !conn.isClosed()) {
                try {
                    conn.close();
                } catch (Exception ce) {
                    log.error("Failed to close connection");
                }
            }
            return map;
        } catch (Exception e) {
            throw new Exception(e.getMessage());
        }
    }
}

