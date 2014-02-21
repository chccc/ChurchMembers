package org.chccc

class Membership {
	//String name;
	Person person;
	FellowshipGroup fellowshipGroup
	String toString(){
		return fellowshipGroup.getName()+"-"+person.getName()
	}
    static constraints = {
		person blank:false
		fellowshipGroup blank:false
    }
}
