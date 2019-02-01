

100.times do

first_name = Faker::Name.first_name
last_name = Faker::Name.last_name

contact = Contact.new(
                      first_name: first_name,
                      last_name: last_name,
                      email: Faker::Internet.free_email("#{first_name}.#{last_name}"),
                      phone_number: Faker::PhoneNumber.phone_number
                      )

contact.save
end
Group.create!([
             { name: "Family"},
             { name: "Friends"},
             { name: "Shady Characters"}
             ])
ContactGroup.create([
                    {contact_id: 1, group_id: 1},
                    {contact_id: 2, group_id: 1},
                    {contact_id: 3, group_id: 2},
                    {contact_id: 4, group_id: 2},
                    {contact_id: 5, group_id: 1},
                    {contact_id: 6, group_id: 1},
                    {contact_id: 6, group_id: 2},
                    {contact_id: 7, group_id: 3},
                    {contact_id: 8, group_id: 3},
                    {contact_id: 9, group_id: 3},
                    {contact_id: 10, group_id: 2},
                    {contact_id: 10, group_id: 3},
                    {contact_id: 11, group_id: 1},
                    {contact_id: 12, group_id: 1},
                    {contact_id: 13, group_id: 1},
                    {contact_id: 14, group_id: 1},
                    {contact_id: 15, group_id: 1}
                    ])
