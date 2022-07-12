# frozen_string_literal: true

class Donation::Component < ApplicationViewComponent
  option :donation

  private

  def creation_date
    @donation.created_at.strftime('%d-%m-%Y')
  end

  def claimed_status
    @donation.claimed? ? 'Claimed' : 'Available'
  end

  def claimed_status_class
    "text-xs leading-4 font-medium text-gray-4 rounded py-1 px-2.5
      #{@donation.claimed? ? 'bg-tertiary-300 text-tertiary-500' : 'bg-secondary-300 text-secondary-500'}"
  end
end
