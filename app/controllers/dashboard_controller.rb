class DashboardController < ApplicationController
	
	before_action :authenticate_user!
	#before_action :config_workplaces

	layout 'dashboard'
	
	def index
		

		
	end

	def unauthorize
		render layout: 'unauthorize'
	end

	


	def config_workplaces
		if current_user.role_id == Role.find_by(name: "Prestataire").id

			workplaces = WorkPlace.where(user_id: current_user.id)
			puts "EXCLUDE: #{SPECIALITY_EXCLUDE_FOR_WORKPLACE}"
			puts "SPEC: #{current_user.profile.speciality}"
			
			unless SPECIALITY_EXCLUDE_FOR_WORKPLACE.include?(current_user.profile.speciality)
				unless  workplaces.present?  
					redirect_to config_workplaces_path
				end
			end
		end
	end
	

end