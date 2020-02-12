# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

topics = Topic.create([{name: 'Relationships'}, {name: 'Self'}, {name: 'Anxiety'}, {name: 'Work'}, {name: 'Anger'}, {name: 'Addiction'}])

Card.create(question: 'How might you evolve in the way you express disappointment with a partner?', topic_id: 1)
Card.create(question: 'What did you learn about relationships from your parents?', topic_id: 1)
Card.create(question: 'If you were a friend of yours, what would you tell yourself about the challenges you face?', topic_id: 2)
Card.create(question: 'Around what features of your character does your self-hatred focus?', topic_id: 2)
Card.create(question: 'What do you want to let go of, once and for all?', topic_id: 3)
Card.create(question: 'If you could wave a magic wand, what would you alter about your life', topic_id: 3)
Card.create(question: 'In what ways are you busy to work with, and what can you do to improve this?', topic_id: 4)
Card.create(question: 'What would you like to say (but never have) to someone you have worked with?', topic_id: 4)
Card.create(question: 'Do you have a hard time expressing feelings other than anger?', topic_id: 5)
Card.create(question: 'Do you believe that your way is always right and get angry get angry when others disagree? (in cases where your physical/emotional wellbeing is not in danger', topic_id: 5)
Card.create(question: 'Some people say that addiction is a disease, and others believe it is a choice. What do you think?', topic_id: 24)
Card.create(question: 'What are some rituals or activities that you associate with your addiction that make it difficult to give up? How do you feel about giving them up?', topic_id: 24)




