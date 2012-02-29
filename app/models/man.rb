class Man < ActiveRecord::Base

	validates_numericality_of :name
end
