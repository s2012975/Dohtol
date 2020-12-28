# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




Admin.create!(
    email:    'test@test',
    password: 'testtest',
    )

Customer.create!(
    email:            'test2@test2',
    password:         'test2test2',
    last_name:        '田中',
    first_name:       '太郎',
    last_name_kana:   'タナカ',
    first_name_kana:  'タロウ',
    nick_name:        'ターナー',
    sex:              '男',
    age:              '20',
    profile_image_id: File.open("./app/assets/images/animal_arupaka.png"),
    introduction:     'はじめまして',

    )