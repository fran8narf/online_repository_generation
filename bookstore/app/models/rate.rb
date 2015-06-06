class Rate < ActiveRecord::Base
  belongs_to :book

  validates :name, presence: true
  validates :rating, presence: true, numericality: true, inclusion: { in: [1,2,3,4,5]}

  def index
  	@rates = Rate.all
  end
end
