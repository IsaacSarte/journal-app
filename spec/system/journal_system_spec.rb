require 'rails_helper'

#new
describe 'POST /journals' do
    scenario 'valid journal/category attributes' do
        post '/journals', params: {
            journal: { 
                name: 'Test Category'
             }
        }

        expect(response.status).to eq(302)
    end
end

#edit
describe 'PUT /journals/:id' do
    scenario 'valid journal/category attributes' do
        put '/journals/:id', params: {
            journal: {
                name: 'Test Cat',
                id: ':id'
            }
        }

        expect(response.status).to eq(302)
    end
end

#delete
describe 'Delete /journals/:id' do
    scenario 'valid journal/category attributes' do
        delete '/journals/:id', params: {
            journal: {
                name: 'Test Cat',
                id: ':id'
            }
        }

        expect(response.status).to eq(302)
    end
end