require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "returns success status"
    it "the user`s title is present"
  end

  describe "POST /users" do
    context "when it has valid parameters" do
      it "creates the user with correct attributes"
    end
    
    context "whe it has no valid parameters" do
      it "does not create user"
    end
  end
end
