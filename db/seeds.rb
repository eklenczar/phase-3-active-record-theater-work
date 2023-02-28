Audition.destroy_all
Role.destroy_all

puts "Creating roles..."

othello = Role.create(character_name: "Othello")
forrest = Role.create(character_name: "Forrest Gump")
audrey = Role.create(character_name: "Audrey")
ariel = Role.create(character_name: "Ariel the Little Mermaid")
lear = Role.create(character_name: "King Lear")
dracula = Role.create(character_name: "Count Dracula")


puts "Creating auditions..."

bob = Audition.create(actor: "Bob Ross", location: "Chicago", phone: 111-111-1111, hired: false, role_id: ariel.id)
angela = Audition.create(actor: "Angela Basset", location: "LA", phone: 222-222-2222, hired: true, role_id: ariel.id)
denzel = Audition.create(actor: "Denzel Washington", location: "Hollywood", phone: 333-333-3333, hired: true, role_id: lear.id)
pauly = Audition.create(actor: "Pauly Shore", location: "Hollywood", phone: 444-444-4444, hired: false, role_id: lear.id)
jon = Audition.create(actor: "Jon Stewert", location: "New Jersey", phone: 555-555-5555, hired: false, role_id: othello.id)
rosie = Audition.create(actor: "Rosie O'Donnell", location: "Phoenix", phone: 666-666-6666, hired: false, role_id: othello.id)
chadwick = Audition.create(actor: "Chadwick Boseman", location: "Heaven", phone: 777-777-7777, hired: true, role_id: othello.id)
lindsey = Audition.create(actor: "Lindsey Lohan", location: "Hollywood", phone: 888-888-8888, hired: true, role_id: audrey.id)
tom = Audition.create(actor: "Tom Hanks", location: "New York", phone: 999-999-9999, hired: true, role_id: forrest.id)
mixalot = Audition.create(actor: "Sir Mixalot", location: "Atlanta", phone: 123-123-1234, hired: false, role_id: dracula.id)
keanu = Audition.create(actor: "Keanu Reeves", location: "Hollywood", phone: 100-200-3000, hired: true, role_id: dracula.id)

puts "Seeding done!"