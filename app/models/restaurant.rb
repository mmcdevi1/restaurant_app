class Restaurant < ActiveRecord::Base
  validates_presence_of :name, :description, :address, :phone_number, :city, :state, :zipcode
end
