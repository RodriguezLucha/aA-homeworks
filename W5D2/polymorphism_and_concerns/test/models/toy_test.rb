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

require 'test_helper'

class ToyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
