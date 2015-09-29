require 'rails_helper'

RSpec.describe GoalsController, type: :controller do
  let(:user){FactoryGirl.create(:user)}
  let!(:goal){FactoryGirl.create(:goal)}
    before(:each) do
      sign_in user
    end



  describe "GET #show" do
    it "returns http success" do
      get :show, {id: goal.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, {id: goal.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe 'PUT #update' do
    it 'updates a goal' do
      update_params = {id: goal.id, goal: {title: 'NEW'}}
      put :update, update_params
      expect(goal.reload.title).to eq('NEW')
    end

    it 'does not update without title or description' do
      goal1 = FactoryGirl.create(:goal, title: 'foal1')
      goal2 = FactoryGirl.create(:goal, description: 'I\'m super fly')
    update_params1 = {id: goal1.id, goal: {title: nil,} }
    update_params2 = {id: goal2.id, goal: {description: nil} }
    put :update, update_params1
    put :update, update_params2
    expect(goal1.reload.title).to eq('foal1')
    expect(goal2.reload.description).to eq('I\'m super fly')
    end

    it 'renders edit on error' do
      goal1 = FactoryGirl.create(:goal, title: 'foal1')
      update_params1 = {id: goal1.id, goal: {title: nil,} }
      put :update, update_params1
      expect(response).to render_template('edit')
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    it 'creates a new goal' do
      expect(Goal.count).to eq(1)
      create_params = {goal: {title: 'harry_pooter', description: 'really haiirrryy'}}
      post :create, create_params
      expect(Goal.count).to eq(2)
    end
    it 'does not create without title/description' do
      goal1_params = {goal: {title: nil}}
      goal2_params = {goal: {description: nil}}
      post :create, goal1_params
      post :create, goal2_params
      expect(Goal.count).to eq(1)
    end
    it 'renders new on error' do
      goal1_params = {goal: {title: nil}}
      post :create, goal1_params
      expect(response).to render_template('new')
    end
  end

  describe 'DESTROY #delete' do
    it 'destroys a goal' do
      delete :destroy, {id: goal.id}
      expect(Goal.count).to eq(0)
    end
  end




    # describe 'DESTROY #delete' do
    #
    # end

    # def show
    # end
    #
    # def edit
    # end
    #
    # def update
    # end
    #
    # def new
    # end
    #
    # def create
    #
    # end
    #
    # def destroy
    #
    # end
    # end
  end
