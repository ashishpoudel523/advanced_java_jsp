package com;


import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class BookPriceGenerator {
	
	private List<String> stocks = new ArrayList<>();
	private String message;
	
	private Random randomGenerator = new Random();
	
	public BookPriceGenerator() {
		stocks.add("AAPL");
		stocks.add("MSFT");
		stocks.add("YHOO");
		stocks.add("AMZN");
	}

	public String getPrice(String symbol) {
		double price;

		if (stocks.indexOf(symbol.toUpperCase()) != -1) {
            price =  randomGenerator.nextDouble();
            return "" + price;
		} else {
			return  "Stock symbol is not supported";
		}
	}

	public List<String> getSymbols() {
		return stocks;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}