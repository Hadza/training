# == Schema Information
#
# Table name: donations
#
#  id          :bigint           not null, primary key
#  category    :text
#  claimed     :boolean          default(FALSE)
#  description :text
#  name        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  donee_id    :bigint
#  donor_id    :bigint           not null
#
# Foreign Keys
#
#  fk_rails_...  (donee_id => users.id)
#  fk_rails_...  (donor_id => users.id)
#
class Donation < ApplicationRecord
end
