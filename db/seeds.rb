# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[
    ['田中太郎', 'sample@example.com', '11112222', 't'],
    ['鈴木花子', 'test@example.com', 'aaaabbbb', 'f']
].each do |name, email, pass, admin|
    User.create!(
        {name: name, email: email, password: pass, password_confirmation: pass, admin: admin}
    )
end

['食事', '勉強', '会議', '買い物'].each { |name| Label.create!(name: name) }