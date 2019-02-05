# == Schema Information
#
# Table name: toys
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  toyable_type :string
#  toyable_id   :bigint(8)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Toy < ApplicationRecord
  belongs_to :toyable, polymorphic: true
  validates :name, uniqueness: { scope: :toyable, message: "should happen once per year" }
end
