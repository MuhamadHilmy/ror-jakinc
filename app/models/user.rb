class User < ActiveRecord::Base
  # include Mongoid::Document
  has_one_attached :image
  has_secure_password
end
