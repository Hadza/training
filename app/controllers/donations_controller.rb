# Controller for the donations page
class DonationsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create show]
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
    @donation = Donation.new(donation_params)
    @donation.donor = current_user
    if @donation.save
      puts "Created donation #{@donation.name} with created_at #{@donation.created_at}"
      flash[:notice] = "Donation #{@donation.name} created"
      redirect_to action: 'index'
    else
      flash.now[:notice] = @donation.errors.full_messages.join(', ')
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def donation_params
    params.require(:donation).permit(:name, :description, :claimed, :category_id, :donor_id)
  end
end
