class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value) 
        self.freebies.create(dev: dev, item_name: item_name, value: value)
    end

    def oldest_company 
        Company.all.order(:founding_year).first
    end
end
