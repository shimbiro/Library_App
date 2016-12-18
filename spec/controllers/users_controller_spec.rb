require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it "assigns user" do

    get :new
    expect(assigns(:user)).to be_a_new(User)
  end
  it "creates new user" do
    # post :create, user:  { email: 'mymail@gmail'}
    # expect(User.count).not_to eq('before_count')
    #expect(flash[:notice]) .to have_content("Account successfully created")
    #expect(response).to redirect_to(users_url)



  end
  context "POST#CREATE"do  
    before (:each) do
      post :create, params:{ user: { email: 'mymail@gmail' } }
    end
    it "saves user to database" do
      pending
      before_count = User.count
      # post :create, params:{ user: { email: 'mymail@gmail' }
      expect(User.count).not_to eq(before_count)
    end
    it "display the correct flash"do
      # post :create, params:{ user: { email: 'mymail@gmail' }
      expect(flash[:notice]).to have_content("Account successfully created")
    end
    it "redirects to the users index"do
      #  post :create, params:{ user: { email: 'mymail@gmail' }
      expect(response).to redirect_to(users_url)
    end
  end

 context "GET#EDIT" do
     it "returns an html form for editing" do
      user = FactoryGirl.create(:user)
    get :edit, params: { id: user }
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:edit)
    end
    it "updates element details in the database" do
      user = FactoryGirl.create(:user)   
      get :edit, params: { id: user }   
      put :update, params: {  user:  { :email => "moti@gmail.com"}  }
      expect(User.where(email: "moti@gmail.com")).to be_present
    end
  end
    it "returns an html form for displaying results" do
      get :show
      expect(response).to have_http_status(:success)
      expect(response).to render_template(:show)
 end
end






require 'rails_helper'

RSpec.describe UsersController, type: :controller do

end
