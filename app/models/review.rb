require 'pry'

class Review < ActiveRecord::Base
    belongs_to :product
    belongs_to :user

    def self.user
        self.user
    end

    def self.product
        self.product
    end

    def print_review
        "Review for #{self.product.name} by #{self.user.name}: #{self.star_rating}. #{self.comment}"
    end
end