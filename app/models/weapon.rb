class Weapon < ApplicationRecord

     #this level show the power now of weapon
    def current_power
        (self.power_base + ((level - 1) * self.power_step))
    end

    def title
        "#{self.name} ##{self.level}"
    end

end
