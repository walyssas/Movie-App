class Movie < ActiveRecord::Base

	def self.search_for(query)
  	where('title LIKE :query OR year LIKE :query OR director LIKE :query', query: "%#{query}%")
 	end 

end
