# Q27. 名前、年齢、性別、管理者権限の情報を持ったユーザークラスを定義してインスタンスを作成してください管理者権限の有無はtrueかfalseで表してください

puts " \n---------- < Q27 > ----------"
class User
  attr_accessor :name, :age, :gender, :admin

  def initialize(name:, age:, gender:, admin:)
    @name = name
    @age = age
    @gender = gender
    @admin = false
  end

end

user = User.new(name: "name", age: 00, gender: "--", admin: true)



# Q28.作成した Userクラス からインスタンスを生成、 infoメソッド を実行し、目標の出力になるようにコードを書き足してください
# ＊ user2 の name age gender に関してはご自分の情報で大丈夫です

# class User

# ~~~~~

# end

# user1 = User.new(name: "神里", age: 32, gender: "男", admin: true)
# user2 = User.new(name: "あじー", age: 32, gender: "男", admin: false)

# user1.info
# puts "-----------"
# user2.info
# 出力結果

# 名前：神里
# 年齢：32
# 性別：男
# 管理者権限：有り
# -----------
# 名前：あじー
# 年齢：32
# 性別：男
# 管理者権限：無し

puts " \n---------- < Q28 > ----------"
class User
  attr_accessor :name, :age, :gender, :admin
  def initialize(name:, age:, gender:, admin:)
    @name = name
    @age = age
    @gender = gender
    @admin = false
  end

  def info
    puts "名前：#{name}"
    puts "年齢：#{age}"
    puts "性別：#{gender}"
    puts @admin != admin ? "管理者権限：有り" : "管理者権限：無し"
  end    
end
  
user1 = User.new(name: "神里", age: 32, gender: "男", admin: true)
user2 = User.new(name: "sawa", age: 26, gender: "男", admin: false)

user1.info
puts "-----------"
user2.info
