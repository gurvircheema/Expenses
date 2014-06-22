class Transaction < ActiveRecord::Base
	belongs_to :user
	belongs_to :category

	validates_presence_of :description
	validates_presence_of :amount
	validates_associated :user
end
