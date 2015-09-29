require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) {FactoryGirl.create(:user) }

  before(:each) do
    sign_in user
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  #display goal information
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, { id: user.id }
      expect(response).to have_http_status(:success)
    end
    it 'shows different user page' do
      user2 = FactoryGirl.create(:user, user_name: 'billy bob')
      get :show, {id: user2.id}
      expect(response).to have_http_status(:success)
    end
    #displays goal information 
  end





end
