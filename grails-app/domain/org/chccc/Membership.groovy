package org.chccc

class Membership {
	//String name;
	Person person;
	FellowshipGroup fellowshipGroup
    static constraints = {
		person blank:false
		fellowshipGroup blank:false
    }
}
