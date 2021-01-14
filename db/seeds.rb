# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Admin.create!(
    email:    'test@test',
    password: 'testtest'
    )

Genre.create!(
    name:  '語学',
    )

Genre.create!(
    name:  '医療・福祉',
    )

Genre.create!(
    name:  '会計・経理',
    )

Genre.create!(
    name:  '司法・労務',
    )

Genre.create!(
    name:  'IT',
    )

Genre.create!(
    name:  'ビジネス',
    )

Genre.create!(
    name:  '公務員',
    )

Genre.create!(
    name:  'スポーツ',
    )