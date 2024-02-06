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
      it "creates the weapon with correct attributes" do
        # Generate a hash of attributes for a new user
        weapon_attributes = FactoryBot.attributes_for(:weapon)
        # Perform a POST request to the route with the user attributes
        post weapons_path, params:{ weapon: weapon_attributes}
        # Verify if the user has the correct attributes
        expect(Weapon.last).to have_attributes(weapon_attributes)  
      end
    end

    context "when it has no valid parameters" do
      it "does not create user" do
         expect{
          post weapons_path, params: { weapon: {name: '', description: '', power_base: '', power_step: '', level: ''}}
         }.to_not change(Weapon, :count)
      end
    end
  end

  describe "SHOW /weapon/:id" do
    it "Show details of weapon by Id"
  end

  describe "DESTROY /weapon/:id" do
    it "Delete the weapon by id"      
  end

end
