class CashRegister
    attr_accessor :total, :discount , :items
    
    def initialize(discount =nil)
        @total= 0
        @discount = discount
        @items=[]
        
    end
    

    def add_item(title, price, quantity=1)
        quantity.times do 
            items<<title
        @last_total = @total
        end

        self.total+= price * quantity
        #@items<< title
    end
    def apply_discount
        if discount 
            @total -= @total* @discount/100
            "After the discount, the total comes to $#{self.total}."
        else
        "There is no discount to apply."
        end
    end

    def void_last_transaction #it should undo whatever we just send to total

       @total = @last_total
     end

    



    

end 