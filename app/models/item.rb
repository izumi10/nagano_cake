class Item < ApplicationRecord
   has_one_attached :item_image
   belongs_to :genre
   has_many :cart_items

   #enum payment_method: { : 0, : 1 }


   validates :price,
   numericality: { only_integer: true}

   def add_tax_price
        (self.price * 1.1).round
   end



end
