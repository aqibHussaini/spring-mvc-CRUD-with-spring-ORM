package com.Entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Mylink {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
public Mylink(int id, String link, String description) {
		super();
		this.id = id;   
		this.link = link;
		this.description = description;
	}
public Mylink() {
	super();
	// TODO Auto-generated constructor stub
}
public Mylink(String link, String description) {
	super();
	this.link = link;
	this.description = description;
}
private String link,description;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getLink() {
	return link;
}
public void setLink(String link) {
	this.link = link;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
@Override
public String toString() {
	return "Mylink [id=" + id + ", link=" + link + ", description=" + description + "]";
}
}
