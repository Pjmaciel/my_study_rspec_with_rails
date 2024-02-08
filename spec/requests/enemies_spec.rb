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
  

  
  

end
