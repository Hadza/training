# Donation component
class DonationComponent < ViewComponent::Base
  def initialize(donation:)
    @donation = donation
  end
end
