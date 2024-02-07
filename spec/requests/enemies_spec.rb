require 'rails_helper'

RSpec.describe "Enemies", type: :request do
  
  describe "PUT /enemies" do
    context 'when the enemy exists' do
      it'return status code 200'
      it'updates the record'
      it'returns the enemy updates'
    end
  end
  
  context "whe the enemy does not exist" do
    it 'returns status code 404'
    it 'returns a not found message'
  end

end
