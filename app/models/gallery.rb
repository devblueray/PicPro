class Gallery < ActiveRecord::Base
	belongs_to :customer
	has_many :portraits
end
