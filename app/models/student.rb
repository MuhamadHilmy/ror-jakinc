class Student < ApplicationRecord
	has_one_attached :image
	# include Mongoid::Document
	# field :name, type: String
	# field :age, type: Integer
	# field :grade, type: Integer
end
