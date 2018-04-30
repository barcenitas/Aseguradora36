/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LecturaVehículoXml;


import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;
import java.io.File;

public class LecturaVehículoXml {

  public static void main(String argv[]) {

    try {

	File fXmlFile = new File("Vehiculos.xml");
	DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
	DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
	Document doc = dBuilder.parse(fXmlFile);
			
	
	doc.getDocumentElement().normalize();

	System.out.println("Leyento elementos de :" + doc.getDocumentElement().getNodeName());
			
	NodeList nList = doc.getElementsByTagName("vehiculo");
			
	System.out.println("----------------------------");

	for (int temp = 0; temp < nList.getLength(); temp++) {

		Node nNode = nList.item(temp);
				
		System.out.println("\n---------------");
				
		if (nNode.getNodeType() == Node.ELEMENT_NODE) {

			Element eElement = (Element) nNode;

			System.out.println("Vehiculo id : " + eElement.getAttribute("id"));
			System.out.println("placas: " + eElement.getElementsByTagName("placas").item(0).getTextContent());
			System.out.println("marca : " + eElement.getElementsByTagName("marca").item(0).getTextContent());
                        System.out.println("modelo : " + eElement.getElementsByTagName("modelo").item(0).getTextContent());
                        System.out.println("id_factura: " + eElement.getElementsByTagName("id_factura").item(0).getTextContent());
		}
	}
    } catch (Exception e) {
	e.printStackTrace();
    }
  }

}