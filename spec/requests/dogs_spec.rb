require 'rails_helper'

RSpec.describe "Dogs", type: :request do
  describe "GET /index" do
    it "gets a list of dogs" do
      Dog.create(
        name: 'Chapo',
        age: 10,
        enjoys: 'Teasing the dogs',
        image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.britannica.com%2Fanimal%2Fdog&psig=AOvVaw3-j9wFcbZC8vIv4a9nd1jW&ust=1701546238962000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJig--r_7oIDFQAAAAAdAAAAABAF'
      )

      get '/dogs'

      dog = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(dog.length).to eq 1
    end
  end
  describe "POST /create" do
    it "creates a dog" do
      dog_params = {
        dog: {
          name: 'Buster',
          age: 1,
          enjoys: 'Barking',
          image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.nationalgeographic.com%2Fanimals%2Fmammals%2Ffacts%2Fdomestic-dog&psig=AOvVaw3-j9wFcbZC8vIv4a9nd1jW&ust=1701546238962000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJig--r_7oIDFQAAAAAdAAAAABAK'
        }
      }
  
      post '/dogs', params: dog_params
  
      expect(response).to have_http_status(200)
  
      dog = Dog.first
  
      expect(dog.name).to eq 'Buster'
    end
  end
  describe "DELETE /destroy" do 
    it "deletes a dog" do 
      dog_params = {
        dog: {
          name: 'Buster',
          age: 1,
          enjoys: 'Barking',
          image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.nationalgeographic.com%2Fanimals%2Fmammals%2Ffacts%2Fdomestic-dog&psig=AOvVaw3-j9wFcbZC8vIv4a9nd1jW&ust=1701546238962000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJig--r_7oIDFQAAAAAdAAAAABAK'
        }
      }

      post '/dogs', params: dog_params

      dog = Dog.first 

      delete "/dogs/#{dog.id}"

      expect(response).to have_http_status(200)
      dogs = Dog.all 
      expect(dogs).to be_empty
    end
  end
end