class FlatRentalsController < ApplicationController
  before_action :set_flat_rental, only: %i[ show edit update destroy ]

  # GET /flat_rentals or /flat_rentals.json
  def index
    # @flat_rentals = FlatRental.select(:property_type, :posting_type)
    @flat_rentals = FlatRental.all
    render json: @flat_rentals
  end
  
  # GET /flat_rentals/1 or /flat_rentals/1.json
  def show
    @flat_rental = FlatRental.find(params[:id])
    # If you need to include the associated user, you can do:
    @user = @flat_rental.user
  end

  # GET /flat_rentals/new
  def new
    @flat_rental = FlatRental.new
  end
  
  # GET /flat_rentals/1/edit
  def edit
  end

  # POST /flat_rentals or /flat_rentals.json
  def create
    @flat_rental = FlatRental.new(flat_rental_params)
    respond_to do |format|
      if @flat_rental.save
        format.html { redirect_to flat_rental_url(@flat_rental), notice: "Flat rental was successfully created." }
        format.json { render :show, status: :created, location: @flat_rental }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flat_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flat_rentals/1 or /flat_rentals/1.json
  def update
    respond_to do |format|
      if @flat_rental.update(flat_rental_params)
        format.html { redirect_to flat_rental_url(@flat_rental), notice: "Flat rental was successfully updated." }
        format.json { render :show, status: :ok, location: @flat_rental }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flat_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flat_rentals/1 or /flat_rentals/1.json
  def destroy
    @flat_rental.destroy

    respond_to do |format|
      format.html { redirect_to flat_rentals_url, notice: "Flat rental was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flat_rental
      @flat_rental = FlatRental.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flat_rental_params
      params.require(:flat_rental).permit(:property_type, :posting_type, :bedrooms, :furnishing_status, :present_in, :floor_no, :monthly_rent, :security_deposit , :washrooms, :preferred_gender, :tenant_preference, :parking_availability, :country, :city, :location, :user_id , room_facilities: [] , images:[])
    end
end
