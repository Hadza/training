# Controller for the donations page
class DonationsController < ApplicationController

  def index
    @donations = Donation.order(:created_at).reverse_order
  end

  def show
    @donation = Donation.find(params[:id])
  end

  def new
    if user_signed_in?
      @categories = %w[Clothing Food Electronics Other]
      @donation = Donation.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    puts "Creating donation #{donation_params}"

    @donation = Donation.new(donation_params)
    if @donation.save
      puts "Created donation #{@donation.name} with created_at #{@donation.created_at}"
      flash.keep[:notice] = "Donation #{@donation.name} created"
      redirect_to action: 'index'

    else
      flash[:notice] = @donation.errors.full_messages.join(', ')
      render 'new'
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:name, :description, :claimed, :category_id, :donor_id)
  end
end
