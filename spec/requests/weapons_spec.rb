require 'rails_helper'

RSpec.describe "Weapons", type: :request do
  describe "GET /weapons" do
    it "returns http success status" do
      get weapons_path
      expect(response).to have_http_status(200)  
    end
  end
    
    it "the wapons`s information presents" do
      weapons = create_list(:weapon,3)

      get weapons_path

      weapons.each do |weapon|
        expect(response.body).to include(weapon.name, weapon.current_power.to_s, weapon.power_base.to_s ,weapon.description)
        expect(response.body).to include("href=\"#{weapon.description}\"")
      end
    end


  describe "POST /weapons" do
    context "when it has valid parameters" do
      it "creates the weapon with correct attributes"
    end

    context "when it has no valid parameters" do
      it "does not create user"
    end
  end

  describe "SHOW /weapon/:id" do
    it "Show details of weapon by Id"
  end

  describe "DESTROY /weapon/:id" do
    it "Delete the weapon by id"      
  end

end
