class RequirementsController < ApplicationController
  before_action :authenticate_user! # Ensure the user is logged in
  
  def index
    @requirement = current_user.requirements.all
  end

  def new
    @requirement = Requirement.new
  end
  
  def show
    @requirement = Requirement.find(params[:id])
    @matching_rentals = find_matching_rentals(@requirement)
  end

  def create
    @requirement = Requirement.new(requirement_params)
    @requirement.user_id = current_user.id
    if @requirement.save
      # Find matching rentals based on user requirements
      @matching_rentals = find_matching_rentals(@requirement)
      if @matching_rentals.empty?
        flash[:notice] = "No matching rentals found."
      end
      render :show
    else
      render :new
    end
  end

  def find_matching_rentals(requirement)
    # Query your FlatRental model to find matching rentals
    matching_rentals = FlatRental.where(
      location: requirement.location,
      monthly_rent: requirement.budget,
      bedrooms: requirement.bedrooms
    )

    return matching_rentals
  end

  def match_requirements
    # Logic to check for matches between requirements and rentals
    matching_requirements = Requirement.all # Replace with your matching logic

    matching_requirements.each do |requirement|
      matching_rentals = find_matching_rentals(requirement)

      if matching_rentals.present?
        # Notify the user about the matching rentals, e.g., send an email
        UserMailer.match_notification(requirement.user, matching_rentals).deliver_now
      end
    end
  end

  private

  def requirement_params
    params.require(:requirement).permit(:location, :budget, :bedrooms)
  end
end
