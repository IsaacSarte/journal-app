require 'rails_helper'

#new
# describe 'Get task' do
#     scenario 'valid task attributes' do
#         post '/journals/:journal_id/tasks/new', params: {
#             task: {
#                 name: 'Test Task',
#                 journal_id: ':journal_id',
#             }
#         }

#         expect(response.status).to eq(302)
#     end
# end

describe 'POST /tasks' do
    scenario 'valid journal/category attributes' do
        post '/journals', params: {
            journal: { 
                name: 'Test Category',
                id: 69
             }
        }

        expect(response.status).to eq(302)
    end
    scenario 'valid task attributes' do
        post '/journals/:journal_id/tasks', params: {
            journal: {
                id: 69,
                tasks: { 
                    journal_id: 69,
                    name: 'Test Task'
                 }
             }
        }
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