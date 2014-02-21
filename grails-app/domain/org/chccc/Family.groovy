package org.chccc

class Family {
	String name
	String address1
	String address2
	String city
	String state
	String postalCode
	String homePhone
	String country
	byte[] photo
	String toString(){
		name
	}
	
	static hasMany = [members:Person]
    static constraints = {
		name()
		address1()
		address2()
		city()
		state()
		postalCode()
		homePhone()
		country()
		photo(nullable:true, maxSize:16777215)
		members blank:false		
    }

}
