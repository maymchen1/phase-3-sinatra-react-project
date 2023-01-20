class Item < ActiveRecord::Base 
    belongs_to :cart
    validates :title, presence: true
    def self.not_in_cart
    where(cart_id: nil)
    end
end