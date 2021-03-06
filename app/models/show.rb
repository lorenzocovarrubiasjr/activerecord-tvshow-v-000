class Show < ActiveRecord::Base 
  
    def self.highest_rating
    #Show.order(rating: :desc).limit(1).select(:rating)
    Show.maximum("rating")
    end 
    
    def self.most_popular_show 
      self.order(:rating).last
    end 
    
    def self.lowest_rating
      Show.minimum("rating")
    end 
    
    def self.least_popular_show 
     self.order(:rating).first 
    end 
    
    def self.ratings_sum
      Show.sum("rating")
    end 
    
    def self.popular_shows 
      Show.where("rating > ?", 5)
    end 
    
    def self.shows_by_alphabetical_order
      Show.order(name: :asc)
    end 
end 