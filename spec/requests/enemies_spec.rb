require 'rails_helper'

RSpec.describe "Enemies", type: :request do
  #index
  describe "GET /enemies" do
    it "returns http success status" do
      get enemies_path
      expect(response).to have_http_status(200)
    end
  end

  #create

  #show
  describe "SHOW /enemy/:id" do
    it "Show details of enemy by Id" do
        enemy = create(:enemy)
        get enemy_path(enemy) 
        expect(response).to have_http_status(:success)
        expect(response.body).to include(enemy.name, enemy.power_base.to_s, enemy.power_step.to_s, enemy.level.to_s)
      end
  end 

  

  
  

end
