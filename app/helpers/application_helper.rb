module ApplicationHelper



	def count_contact(contact_book_id)
		contact_book = ContactBook.find(contact_book_id)
		contacts = contact_book.contacts.count
	end
	
  def user_avatar(user, alt_tag, class_name)
		profile = user.profile

			
		if profile.present? && profile.avatar.attached?
				image_tag profile.avatar,  class: class_name, alt: alt_tag
		else

				image_tag 'thumb/missing.png',  class: class_name, alt: alt_tag
		end
 
	end

	



		
	def is_superuser?(user)
		if user.role_id == Role.find_by(name: "superuser").id 
			true
		else
			false 
		end
	end

	def is_administrator?(user)
		if user.role_id == Role.find_by(name: "Administrateur").id 
			true
		else
			false 
		end
	end
	
	
	

	def user(id)
		User.find(id)
	end
		
	
	




		
		def uncomplete_profile?
			#user = User.find(current_user.id)
			profile = current_user.profile
			#user_detail = user.user_detail
			#user_contact = user.user_contact
			structures = profile.structures
			if profile.nil? 
				return true
			elsif  profile.locality_id.nil? 
				return true
			else
				return false
			
			end
	
		end

	
	

	

		def current?(key, path)
			"#{key}" if current_page? path
			# We use string interpolation "#{key}" here to access the CSS classes we are going to create.
		 end


end
