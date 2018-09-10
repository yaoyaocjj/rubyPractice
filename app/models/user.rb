class User < ApplicationRecord
  has_many :microposts
  attr_accessor :name, :email

  def initialize (attributes={})
    @name = attributes[:name]
    @email = attributes[:email]
  end

  def formatted_email
    "#{name} <#{email}"
  end
end
