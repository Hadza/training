# Donation component
class DonationComponent < ViewComponent::Base
  def initialize(donation:)
    @donation = donation
  end

  private
  def creation_date
    @donation.created_at.strftime("%d-%m-%Y")
  end
end
