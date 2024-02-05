require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "returns success status" do
      get users_path
      expect(response).to  have_http_status(200)
    end
    it "the user`s title is present" do
      users = create_list(:user, 3)

      get users_path

      users.each do |user|
          expect(response.body).to include(user.title)     
      end
    end
  end

  describe "POST /users" do
    context "when it has valid parameters" do
      it "creates the user with correct attributes" do
        # Gere atributos de usuário válidos usando FactoryBot
        user_attributes = FactoryBot.attributes_for(:user)

        # Faça uma solicitação POST para a rota com os atributos do usuário
        post users_path, params: { user: user_attributes }

        puts " #{User.last.errors.full_messages unless User.last.nil?}" 

        # Verifique se o usuário tem os atributos corretos
        expect(User.last).to have_attributes(user_attributes)
      end
    end
  end

end
