dogs = [
    {
        name: 'Chapo',
        age: 10,
        enjoys: 'Teasing the dogs',
        image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.britannica.com%2Fanimal%2Fdog&psig=AOvVaw3-j9wFcbZC8vIv4a9nd1jW&ust=1701546238962000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJig--r_7oIDFQAAAAAdAAAAABAF'
    },
    {
        name: 'Buster',
        age: 1,
        enjoys: 'Barking',
        image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.nationalgeographic.com%2Fanimals%2Fmammals%2Ffacts%2Fdomestic-dog&psig=AOvVaw3-j9wFcbZC8vIv4a9nd1jW&ust=1701546238962000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJig--r_7oIDFQAAAAAdAAAAABAK'
    },
    {
        name: 'Goon',
        age: 3,
        enjoys: 'Eating',
        image: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.earth.com%2Fnews%2Fnational-dog-day-celebrating-all-the-ways-that-dogs-make-life-better%2F&psig=AOvVaw3-j9wFcbZC8vIv4a9nd1jW&ust=1701546238962000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCJig--r_7oIDFQAAAAAdAAAAABAS'
    }
]

dogs.each do |dog_attributes|
    Dog.create dog_attributes
    puts "created dog: #{dog_attributes}"
  end