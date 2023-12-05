require 'rails_helper'

RSpec.describe Dog, type: :model do
  it "should validate name" do
    dog = Dog.create(age: 1, enjoys: 'Barking', image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.nationalgeographic.com%2Fanimals%2Fmammals%2Ffacts%2Fdomestic-dog&psig=AOvVaw3-j9wFcbZC8vIv4a9nd1jW&ust=1701546238962000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJig--r_7oIDFQAAAAAdAAAAABAK')

    expect(dog.errors[:name]).to_not be_empty
  end
  it "should have an age" do
    dog = Dog.create(name: 'Buster', enjoys: 'Barking', image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.nationalgeographic.com%2Fanimals%2Fmammals%2Ffacts%2Fdomestic-dog&psig=AOvVaw3-j9wFcbZC8vIv4a9nd1jW&ust=1701546238962000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJig--r_7oIDFQAAAAAdAAAAABAK')
    expect(dog.errors[:age]).to_not be_empty
  end
  it "should enjoy stuff" do
    dog = Dog.create(name: 'Buster', age: 1, image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.nationalgeographic.com%2Fanimals%2Fmammals%2Ffacts%2Fdomestic-dog&psig=AOvVaw3-j9wFcbZC8vIv4a9nd1jW&ust=1701546238962000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJig--r_7oIDFQAAAAAdAAAAABAK')
    expect(dog.errors[:enjoys]).to_not be_empty
  end
  it "should validate image" do
    dog = Dog.create(age: 1, enjoys: 'Barking')

    expect(dog.errors[:image]).to_not be_empty
  end
  it "should enjoy something longer than 10 characters" do
    dog = Dog.create(name: 'Buster', age: 1, image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.nationalgeographic.com%2Fanimals%2Fmammals%2Ffacts%2Fdomestic-dog&psig=AOvVaw3-j9wFcbZC8vIv4a9nd1jW&ust=1701546238962000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJig--r_7oIDFQAAAAAdAAAAABAK')
    expect(dog.errors[:enjoys]).to_not be_empty
  end
end