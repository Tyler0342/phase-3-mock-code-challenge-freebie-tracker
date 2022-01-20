puts "Deleting all"
Company.delete_all
Dev.delete_all
Freebie.delete_all

puts "Creating companies..."
c1 = Company.create(name: "Google", founding_year: 1998)
c2 = Company.create(name: "Facebook", founding_year: 2004)
c3 = Company.create(name: "Dunder Mifflin", founding_year: 2002)
c4 = Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
d1 = Dev.create(name: "Rick")
d2 = Dev.create(name: "Morty")
d3 = Dev.create(name: "Mr. Meseeks")
d4 = Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here

Freebie.create(item_name: "Shirt", value: 15, company_id: c1.id, dev_id: d2.id)
Freebie.create(item_name: "Socks", value: 5, company_id: c1.id, dev_id: d1.id)
Freebie.create(item_name: "Hat", value: 20, company_id: c2.id, dev_id: d3.id)
Freebie.create(item_name: "Keychain", value: 3, company_id: c3.id, dev_id: d4.id)
Freebie.create(item_name: "Pen", value: 2, company_id: c1.id, dev_id: d4.id)
Freebie.create(item_name: "Carry Bag", value: 12, company_id: c2.id, dev_id: d3.id)
Freebie.create(item_name: "Sticker", value: 2, company_id: c1.id, dev_id: d4.id)
Freebie.create(item_name: "Headphones", value: 35, company_id: c4.id, dev_id: d1.id)


puts "Seeding done!"
