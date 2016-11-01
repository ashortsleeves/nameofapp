require 'rails_helper'

describe UsersController, :type => :controller do
    
    # let(:user) { User.create!(email: 'jimbob@gmail.com', password: 'password1') }
    # let(:anotheruser) { User.create!(email: 'bobbyboy@gmail.com', password: 'password1') }
    # @user = FactoryGirl.create(:user)
      
    let(:user) { FactoryGirl.create(:user) }  
      
    describe 'GET #show' do

        context 'User is logged in' do
            before do
                sign_in user
            end
            it 'loads correct user details' do
                get :show, id: user.id
                expect(response).to be_success
                expect(response).to have_http_status(200)
                expect(assigns(:user)).to eq user
            end

        end
        context 'No user is logged in' do
            it 'redirects to login' do
                get :show, id: user.id
                expect(response).to redirect_to('/login')
            end
        end
    end
end