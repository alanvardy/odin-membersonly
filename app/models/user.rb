# frozen_string_literal: true

class User < ApplicationRecord
  has_many :posts
  validates :name, presence: true
  validates :email, presence: true
  has_secure_password
end
