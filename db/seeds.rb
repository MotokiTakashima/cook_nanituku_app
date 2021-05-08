ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY CASCADE")
ActiveRecord::Base.connection.execute("TRUNCATE TABLE posts RESTART IDENTITY CASCADE")

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

Post.create!(title: "肉じゃが", recipe: "ジャガイモ", content: "煮る", user_id: user2.id)
Post.create!(title: "チャーハン", recipe: "米", content: "炒める", user_id: user3.id)
Post.create!(title: "天ぷら", recipe: "えび", content: "揚げる", user_id: user3.id)

puts "初期データの投入に成功しました！"
