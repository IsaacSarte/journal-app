require 'rails_helper'

#---------- User Registrations ----------

describe "User Authentication" do
    describe "Sign Up" do
      before(:each) do
        @user = User.new
      end
  
      it "can confirm account by clicking on confirmation link" do
        post '/users/sign_up', params: {
            user: {
                username: 'Example User',
                email: 'example@gmail.com',
                host: 'localhost:3000',
                only_path: true
            }
        }
        expect(response.status).to eq(200)
      end
    end
end

#---------- User Sign In ----------

#create
describe 'User Sign In' do
    scenario 'valid sign in attributes' do
        post '/users/sign_in', params: {
            user: {
                email: 'example@gmail.com', 
                password: '123123', 
            }
        }
        expect(response.status).to eq(200)
    end
end

#delete
describe 'User Sign Out' do
    scenario 'valid sign out attributes' do
        delete '/users/sign_out', params: {
            user: {
                email: 'example@gmail.com', 
                password: '123123', 
            }
        }
        expect(response.status).to eq(302)
    end
end