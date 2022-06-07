# Renders the home page.
class HomeController < ApplicationController
  def index
    @donations = Donation.all
  end
end
