Book.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: 'Fiction')
apple = Genre.create!(name: 'Apple')
non_fiction = Genre.create!(name: 'Non-Fiction')

Book.create!([{
  title: "Hyperion",
  author: "Dan Simmons",
  description: "Probably my favorite science fiction book (and series) I've ever read. Hyperion is written in a style similar to The Canterbury Tales, in which a series of stories are told by the main characters. Each story is a gem in itself, but alude to the larger storyline. The scope of the story is ambitious - spanning time, planets religion and love.",
  amazon_id: "0553283685",
  rating: 5,
  finished_on: 10.days.ago,
  genres: [fiction]
},
{
  title: "Jony Ive: The Genius Behind Apple's Greatest Products",
  author: "Leander Kahney",
  description: "Even though I respect Ive, I felt this biography only hit skin deep. It went over all the major events in his life, his passion for design, awards he achieved -- but that's really it. I dont't feel I know him anymore than before reading this.",
  amazon_id: "159184617X",
  rating: 4,
  finished_on: 1.day.ago,
  genres: [non_fiction, apple]
},
{
  title: "Mindstorms",
  author: "Seymour A. Papert",
  description: "Although this book focuses on the cognitive advantages to having children use technology from an early age, it is also an in depth look at how people can learn for themseves. As someone who was often distracted and bored at times during school, Mindstorms highlights some of the reasoning behind that feeling and what we can do as teachers to help minimize it.",
  amazon_id: "0465046746",
  rating: 1,
  finished_on: nil,
  genres: [non_fiction]
}])

p "Created #{Book.count} books"
