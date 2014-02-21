package org.chccc

class Person {
	String firstName;
	String lastName;
	String email;
	String cellPhone;
	String phone
	String sex
	String toString(){
		return firstName+" "+lastName;
	}
	
	static hasMany = [memberships:Membership]
	
    static constraints = {
		firstName()
		lastName()
		email()
		cellPhone()
		phone()
		sex(inList: ["男","女"])
    }
	
	
}
