require 'rails_helper'

#new
describe 'Get task' do
    scenario 'valid task attributes' do
        get '/journals/:journal_id/tasks/new', params: {
            task: {
                name: 'Test Task',
                journal_id: ':journal_id',
            }
        }

        expect(response.status).to eq(302)
    end
end


#edit

#delete
# describe 'Delete task' do
#     scenario 'valid task attributes' do
#         delete '/journals/:journal_id/tasks/:id', params: {
#             task: {
#                 name: 'Test Task',
#                 journal_id: ':journal_id',
#             }
#         }

#         expect(response.status).to eq(302)
#     end
# end