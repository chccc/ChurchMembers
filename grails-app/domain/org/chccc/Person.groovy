package org.chccc

class Person {
	String name;
	String email;
	String cellPhone;
	String phone
	String sex
	Family family
	String toString(){
		return name;
	}
	
	static hasMany = [memberships:Membership]
	//static hasOne = [address:Address]
	//static belongsTo = Family
	
    static constraints = {
		name()
		email()
		cellPhone()
		phone()
		sex(inList: ["男","女"])
    }
	
	
}
