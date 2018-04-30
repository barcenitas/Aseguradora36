/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package leerxmlgeneral;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;
import java.io.File;

public class LeerXmlGeneral {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        LecturaClienteXml c = new LecturaClienteXml();
        LecturaFacturaXml f = new LecturaFacturaXml();
        LecturaVehículoXml v = new LecturaVehículoXml();
        
        c.cliente();
        f.factura();
        v.vehiculo();
        
    }
    
}
