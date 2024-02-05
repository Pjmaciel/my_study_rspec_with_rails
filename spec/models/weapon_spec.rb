require 'rails_helper'

RSpec.describe Weapon, type: :model do
  it "returns the weapon current power" do
    weapon = build(:weapon)
    expected_weapon = power_base + ((level - 1) * power_step)
    expect(weapon.current_power).to eq(expected_weapon)
  end

  it "returns the correct hero title" do

  end
end
