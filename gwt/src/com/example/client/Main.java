package com.example.client;

import com.google.gwt.core.client.EntryPoint;
import com.google.gwt.dom.client.Document;
import com.google.gwt.dom.client.Element;


public class Main implements EntryPoint{

	@Override
	public void onModuleLoad(){
		Element textDiv = Document.get().getElementById("text");
		textDiv.setInnerHTML("Hello GWT World!");
	}

}
