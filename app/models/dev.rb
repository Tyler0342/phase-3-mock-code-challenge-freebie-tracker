class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def recieved_one?(item_name)
        self.freebies.pluck(:item_name).include?(item_name)
    end

    def give_away(dev, freebie)
        self.recieved_one?(freebie.item_name)
        freebie.update(dev_id: dev_id)
    end
end
