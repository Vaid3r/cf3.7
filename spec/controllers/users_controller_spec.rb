require 'rails_helper'

describe UsersController, type: :controller do

  let(:user) { User.create!(email: "testingemail@testemail.com", password: "testing123456") }
  let(:user2) { User.create!(email: "test1234567890@testemail.com", password: "test123") }


  describe 'GET #show' do

    context 'when a user logs in' do
      before do
        sign_in user
      end

      it 'loads the user and they can access their own show page' do
        get :show, params: { id: user.id }
        expect(response).to be_ok
        expect(assigns(:user)).to eq user
      end

      it 'cannot access other users show page' do
        get :show, params: { id: user2.id }
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end
    end
  end

end