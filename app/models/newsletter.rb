class Newsletter < ActiveRecord::Base

    has_many :subscribers
    has_many :customers, through: :subscribers
    
    def customer_list
        self.subscribers.map{|sub| sub.customer}
    end

end