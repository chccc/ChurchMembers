package org.chccc

class FamilyController {
	static scaffold=Family
    static menuName="Family Menu"
	
	
	def displayPhoto = {
		Family family=Family.get(params.id)
		response.contentType = "image/jpeg"
		response.contentLength = family.photo.length
		response.getOutputStream().write(family.photo)
		response.getOutputStream().flush()
	}
}
