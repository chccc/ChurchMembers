package org.chccc

class FellowshipGroup {
	String name;
	String description;
	String toString(){
		return name;
	}
	
	static hasMany = [memberships:Membership]
    static constraints = {
    }
}
