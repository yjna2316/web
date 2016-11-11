class Tag < ActiveRecord::Base
    has_many :taggings
    has_many :homes, through: :taggings
end