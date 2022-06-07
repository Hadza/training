# == Schema Information
#
# Table name: donations
#
#  id          :bigint           not null, primary key
#  claimed     :boolean          default(FALSE)
#  description :text
#  name        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :bigint
#  donee_id    :bigint
#  donor_id    :bigint           not null
#
# Indexes
#
#  index_donations_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (donee_id => users.id)
#  fk_rails_...  (donor_id => users.id)
#
class Donation < ApplicationRecord
  belongs_to :donor, class_name: 'User'
  belongs_to :donee, class_name: 'User', optional: true
  belongs_to :category

  validates :name, presence: true
  validates :category, presence: true
  validates :donor, presence: true

end
