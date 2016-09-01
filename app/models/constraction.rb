class Constraction < ActiveRecord::Base
		has_many :orderers
		has_many :works
		scope :name_like, -> (name) { where("name ilike ?", name)}
end
