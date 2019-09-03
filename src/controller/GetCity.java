package controller;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class GetCity {
	
	private static String getTagValue(String tag, Element eElement) {
	    NodeList nlList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
	    Node nValue = (Node) nlList.item(0);
	    if(nValue == null) 
	        return null;
	    return nValue.getNodeValue();
	}
	
	public static void main(String[] args) {
		System.out.println("태이");
		int cnt = 0;
		int pageNo = 1;
		try{
			while(true){
				

				// parsing할 url 지정(API 키 포함해서)
				String url = "http://openapi.airport.co.kr/service/rest/AirportCodeList/getAirportCodeList?serviceKey=Q20gb5%2FZiBP1MTefzwOXrO0t25DhMTdRY3S%2BZmc3MLOeF57ErDeM0wgea0Pn08csLg59VL6BH4Kim2pBwQQteQ%3D%3D&pageNo=" + pageNo;
				
				DocumentBuilderFactory dbFactoty = DocumentBuilderFactory.newInstance();
				DocumentBuilder dBuilder = dbFactoty.newDocumentBuilder();
				Document doc = dBuilder.parse(url);
				
				// root tag 
				doc.getDocumentElement().normalize();
				//System.out.println("Root element :" + doc.getDocumentElement().getNodeName());
				
				// 파싱할 tag
				NodeList nList = doc.getElementsByTagName("item");
				//System.out.println("파싱할 리스트 수 : "+ nList.getLength());
				
				
				for(int temp = 0; temp < nList.getLength(); temp++){
					Node nNode = nList.item(temp);
					
					
					if(nNode.getNodeType() == Node.ELEMENT_NODE){
						Element eElement = (Element) nNode;
						
						//System.out.println("######################");
						//System.out.println(eElement.getTextContent());
						//System.out.println("한글도시  : " + getTagValue("cityKor", eElement));
						System.out.println("insert into any_city values('"+ getTagValue("cityCode", eElement) + "', '" + getTagValue("cityKor", eElement) + "'" + ");");
						//System.out.println(cityList.size());
						cnt++;
					}	// for end
				}	// if end
				
				pageNo += 1;
				//System.out.println("page number : "+pageNo);
				if(pageNo > 98){	
					break;
				}
			}	// while end
			System.out.println(cnt);
		} catch (Exception e){	
			e.printStackTrace();
		}	// try~catch end
	}
	



}
