class House < ActiveRecord::Base

  attr_accessible :title, :description, :number_of_people,:filename,:location

end