# Controller for the donations page
class DonationsController < ApplicationController
  def index
    @donations = Donation.order(:created_at).reverse_order
  end

  def show
    @donation = Donation.find(params[:id])
  end
end
