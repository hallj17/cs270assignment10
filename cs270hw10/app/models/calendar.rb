class Calendar < ActiveRecord::Base
    has_many :events
    #create class variable for days of week 
       after_initialize :setup 
       @@days_of_week = ['Sun', 'Mon', 'Tue', "Wed", "Thur", "Fri", "Sat"]
    
    
    def setup
        #create empty array and base_date variable
        @weeks =[]
        @base_date = Date.new(year,month)
    end
    
        def self.days_of_week
            return @@days_of_week
        end
        
        def weeks
            date = @base_date - @base_date.wday
            stop = @base_date.next_month + 6 - @base_date.next_month.wday + 1
            week = []
        
            while date != stop
            week << date
            if date.wday == 6 
                @weeks << week
                week =[]
            end
        date = date.next
            end
         return @weeks
        end
        
        
        

    
end
