
require 'pry'


class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize(discount=0, total=0)
        @total = total
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        self.last_transaction = price * quantity
        self.total += price * quantity
        quantity.times do
            self.items.push(title)
        end
    end


    def apply_discount
        if self.discount > 0
            self.total -= (self.total * (self.discount * 0.01))
            return "After the discount, the total comes to $800."
        else 
            return "There is no discount to apply."
        end
    end



    def void_last_transaction
        self.total -= self.last_transaction
    end




end

#  binding.pry