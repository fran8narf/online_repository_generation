class Book < ActiveRecord::Base
	has_many :rates

	validates :name, presence: true
	validates :price, presence: true
	validates :description, presence: true

=begin
	def self.search(search)
	  search = "%" + search + "%"
	  find(:all, :conditions => ['name LIKE ? OR description LIKE ?', search, search])
	end
=end

	def self.search(search)
		where("name LIKE ? OR description LIKE ?",  "%#{search}%", "%#{search}%")
	end
	
end
