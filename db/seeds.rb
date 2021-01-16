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

Customer.create!(
    email:            'test2@test2',
    password:         'test2test2',
    last_name:        '田中',
    first_name:       '太郎',
    last_name_kana:   'タナカ',
    first_name_kana:  'タロウ',
    nick_name:        'タナ',
    sex:              '男',
    age:              '20',
    profile_image:    File.open("./app/assets/images/animal_arupaka.png"),
    introduction:     'はじめまして'
    )

Customer.create!(
    email:            'test3@test3',
    password:         'test3test3',
    last_name:        '田中',
    first_name:       '益男',
    last_name_kana:   'タナカ',
    first_name_kana:  'タロウ',
    nick_name:        'マス',
    sex:              '男',
    age:              '24',
    profile_image:    File.open("./app/assets/images/animal_buta.png"),
    introduction:     'はじめまして'
    )

Customer.create!(
    email:            'test4@test4',
    password:         'test4test4',
    last_name:        '田中',
    first_name:       '太郎',
    last_name_kana:   'タナカ',
    first_name_kana:  'タロウ',
    nick_name:        'マイ',
    sex:              '女',
    age:              '27',
    profile_image:    File.open("./app/assets/images/animal_hamster.png"),
    introduction:     'はじめまして'
    )

Customer.create!(
    email:            'test5@test5',
    password:         'test5test5',
    last_name:        '田中',
    first_name:       '太郎',
    last_name_kana:   'タナカ',
    first_name_kana:  'タロウ',
    nick_name:        '始皇帝',
    sex:              '男',
    age:              '20',
    profile_image:    File.open("./app/assets/images/animal_inu.png"),
    introduction:     'はじめまして'
    )

Customer.create!(
    email:            'test6@test6',
    password:         'test6test6',
    last_name:        '田中',
    first_name:       '太郎',
    last_name_kana:   'タナカ',
    first_name_kana:  'タロウ',
    nick_name:        'ケンシロウ',
    sex:              '男',
    age:              '20',
    profile_image:    File.open("./app/assets/images/animal_kuma.png"),
    introduction:     'はじめまして'
    )

Customer.create!(
    email:            'test7@test7',
    password:         'test7test7',
    last_name:        '田中',
    first_name:       '太郎',
    last_name_kana:   'タナカ',
    first_name_kana:  'タロウ',
    nick_name:        'ジャギ',
    sex:              '男',
    age:              '20',
    profile_image:    File.open("./app/assets/images/animal_mitsubachi.png"),
    introduction:     'はじめまして'
    )

Customer.create!(
    email:            'test8@test8',
    password:         'test8test8',
    last_name:        '田中',
    first_name:       '太郎',
    last_name_kana:   'タナカ',
    first_name_kana:  'タロウ',
    nick_name:        'トキ',
    sex:              '男',
    age:              '20',
    profile_image:    File.open("./app/assets/images/animal_neko.png"),
    introduction:     'はじめまして'
    )

Customer.create!(
    email:            'test9@test9',
    password:         'test9test9',
    last_name:        '田中',
    first_name:       '太郎',
    last_name_kana:   'タナカ',
    first_name_kana:  'タロウ',
    nick_name:        'ラオウ',
    sex:              '男',
    age:              '20',
    profile_image:    File.open("./app/assets/images/animal_usagi.png"),
    introduction:     'はじめまして'
    )