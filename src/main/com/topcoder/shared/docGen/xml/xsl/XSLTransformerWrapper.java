package com.topcoder.shared.docGen.xml.xsl;

import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.*;

/**
 * XSLTransformerWrapper.java
 *
 * Description: Wrapper class for rendering an XML data source using an XSL template.
 *
 * @author  James Lee (jameslee@cs.stanford.edu)
 * @version  $Revision$
 *
 */
public class XSLTransformerWrapper {
    /**
     * The actual transformer object that is being wrapped
     */
    protected Transformer transformer;

    /**
     * Creates a transformer with the specified XSL template.  Internally,
     * a javax.xml.transform.Transformer object is created, and that's
     * used for the actual XSL transformations.
     *
     * @param xslInputStream  the input stream containing the XSL template
     * @throws Exception
     */
    public XSLTransformerWrapper(InputStream xslInputStream)
            throws Exception {
        try {
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Source xslSource = new StreamSource(xslInputStream);

            this.transformer = transformerFactory.newTransformer(xslSource);
        } catch (TransformerConfigurationException e) {
            throw e;
        }
    }


    /**
     * Creates a transformer with the specified XSL template.  Internally,
     * a javax.xml.transform.Transformer object is created, and that's
     * used for the actual XSL transformations.
     *
     * @param xslFile  the input file containing the XSL template
     * @throws Exception
     */
    public XSLTransformerWrapper(File xslFile)
            throws Exception {
        try {
            TransformerFactory transformerFactory = TransformerFactory.newInstance();
            Source xslSource = new StreamSource(xslFile);

            this.transformer = transformerFactory.newTransformer(xslSource);
        } catch (TransformerConfigurationException e) {
            throw e;
        }
    }

    /**
     * Transforms the specified XML data and sends the output of the transformation
     * to the specified target OutputStream.
     *
     * @param xmlInputStream  the input stream containing source XML data
     * @param targetOutputStream  the output stream that receives the transformed result
     * @throws Exception
     */
    public void transform(InputStream xmlInputStream, OutputStream targetOutputStream)
            throws Exception {
        try {
            Source xmlSource = new StreamSource(xmlInputStream);
            Result result = new StreamResult(targetOutputStream);
            transformer.transform(xmlSource, result);
        } catch (TransformerException e) {
            throw e;
        }
    }

    /**
     * Transforms the specified XML data and sends the output of the transformation
     * to the specified target OutputStream.
     *
     * @param xmlInputReader  the input reader containing source XML data
     * @param targetOutputStream  the output stream that receives the transformed result
     *
     * @throws Exception
     */
    public void transform(Reader xmlInputReader, OutputStream targetOutputStream)
            throws Exception {
        try {
            Source xmlSource = new StreamSource(xmlInputReader);
            Result result = new StreamResult(targetOutputStream);
            transformer.transform(xmlSource, result);
        } catch (TransformerException e) {
            throw e;
        }
    }


}
