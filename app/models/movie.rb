class Movie < ApplicationRecord
  def self.all_ratings = ['G','PG','PG-13','R']
    
  def self.with_ratings(ratings)
    if !ratings.blank?
      lowercase_ratings = ratings.map(&:downcase)
      return where('LOWER(rating) IN (?)', lowercase_ratings)
    else
      return all
    end
  end
end
