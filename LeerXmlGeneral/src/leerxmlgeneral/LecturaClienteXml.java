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

public class LecturaClienteXml {
    public void cliente(){
    try {

	File fXmlFile = new File("Clientes.xml");
	DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
	DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
	Document doc = dBuilder.parse(fXmlFile);
			
	
	doc.getDocumentElement().normalize();
        System.out.println("\n----------------------------");
	System.out.println("Leyento elementos de :" + doc.getDocumentElement().getNodeName());
			
	
        NodeList nList = doc.getElementsByTagName("cliente");		
	System.out.println("\n----------------------------");

	for (int temp = 0; temp < nList.getLength(); temp++) {

		Node nNode = nList.item(temp);
				
		System.out.println("\n---------------");
				
		if (nNode.getNodeType() == Node.ELEMENT_NODE) {

			Element eElement = (Element) nNode;

			System.out.println("cliente id : " + eElement.getAttribute("id"));
			System.out.println("nombre: " + eElement.getElementsByTagName("nombre").item(0).getTextContent());
			System.out.println("direccion : " + eElement.getElementsByTagName("direccion").item(0).getTextContent());
		
		}
	}
    } catch (Exception e) {
	e.printStackTrace();
    }
    }
}
