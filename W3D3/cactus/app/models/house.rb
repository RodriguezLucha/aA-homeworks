class House < ActiveRecord::Base
    validates :address, presence: true
    has_many(
        :houses,
        class_name: 'House',
        foreign_key: :house_id,
        primary_key: :id
    )
end
