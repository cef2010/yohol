require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user) {FactoryGirl.create(:user) }
  let(:user2) {FactoryGirl.create(:user, user_name: 'harry_rails')}
  # let!(:goal) {FactoryGirl.create(:goal) }
  # let!(:goal2) {FactoryGirl.create(:goal, title: 'harry_pooter') }

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
    it 'finds user goals' do
      user.goals.create(title: 'boom', description: 'goes the dynamite')
      user2.goals.create(title: 'harry', description: 'pooter')
      get :show, {id: user.id}
      expect(@goals.count).to eq(1)
      expect(@goals[0].title).to eq('boom')
    end
  end





end
