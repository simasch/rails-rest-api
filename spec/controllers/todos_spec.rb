require 'rails_helper'

describe TodosController, type: :controller do

  it 'gets a list of todos' do
    get :index

    json = JSON.parse(response.body)

    # test for the 200 status-code
    expect(response.status).to eq 200

    # check to make sure the right amount of messages are returned
    expect(json.length).to eq(0)
  end
end