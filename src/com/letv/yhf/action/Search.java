package com.letv.yhf.action;

import java.util.List;
import java.util.Set;

import redis.clients.jedis.Jedis;

import com.opensymphony.xwork2.ActionSupport;

public class Search extends ActionSupport{
	public String query;
	public Set result;
	public String getQuery() {
		return query;
	}
	public void setQuery(String query) {
		this.query = query;
	}
	public Set getResult() {
		Jedis j=new Jedis("127.0.0.1");
		result=j.zrevrange(query, 0, 5);
		return result;
	}
	public void setResult(Set result) {
		this.result = result;
	}
	public String execute(){
		return SUCCESS;
	}

}
