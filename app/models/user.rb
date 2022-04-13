require 'pry'
class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def self.reviews
        self.reviews
    end

    def self.products
        self.reviews.map do |review|
            review.product
        end
    end

    def favorite_product
        self.reviews.where("star_rating = ?", self.reviews.maximum(:star_rating)).first
    end
end