# Q27. 名前、年齢、性別、管理者権限の情報を持ったユーザークラスを定義してインスタンスを作成してください管理者権限の有無はtrueかfalseで表してください

puts " \n---------- < Q27 > ----------"
class User_27
  def initialize(params)
    @name = params[:name]
    @age = params[:age]
    @gender = params[:gender]
    @admin = params[:admin]
  end
end
user = User_27.new(name: "name", age: 00, gender: "--", admin: true)



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
class User_28

  def initialize(params)
    @name = params[:name]
    @age = params[:age]
    @gender = params[:gender]
    @admin = params[:admin]
  end

  def info
    admin = @admin ? '有り' : '無し'
    puts "名前：#{@name}"
    puts "年齢：#{@age}"
    puts "性別：#{@gender}"
    puts "管理者権限：#{admin}"
  end

end
  
user1 = User_28.new(name: "神里", age: 32, gender: "男", admin: true)
user2 = User_28.new(name: "sawa", age: 26, gender: "男", admin: false)

user1.info
puts "-----------"
user2.info


# Q29.次のようなコードを書いて、目標の出力になるようなUserクラスを定義してください
# (名前情報は各自変えて大丈夫です！) ただし、今回は attr_accessor attr_reader attr_writer は使用しないでください

# user = User.new(name: "あじー")

# puts user.name

# user.name = "tanakin"

# puts user.name
# 出力結果

# あじー
# tanakin

# # 「attr」、アクセサメソッドに関する参考元-------------------------
# Rubyのアクセサメソッドを理解した
# https://qiita.com/yoshimitsu41/items/5f174ff74d8e8b15b0be
# ----------------------------------------

puts " \n---------- < Q29 > ----------"
class User_29
    def initialize(params)
        @name = params[:name]
    end
  
    def name=(name)
        @name = name
    end

    def name
        @name
    end
end
user = User_29.new(name: "あじー")
puts user.name
user.name = "tanakin"
puts user.name


# Q30. 以下のようなコードを書いて、期待した出力になるようなUserクラスを定義してください
# user = User.new(name: "あじー", age: 32)

# puts user.introduce

# user2 = User.new(name: "ゆたぼん", age: 10)

# puts user2.introduce
# 期待する出力結果

# こんにちは、あじーと申します宜しくお願いいたします
# はいさいまいど〜、ゆたぼんです！！！


puts " \n---------- < Q30 > ----------"
class User_30
  def initialize(params)
    @name = params[:name]
    @age = params[:age]
  end
  def introduce
    @age == 10 ? 
    "はいさいまいど〜、#{@name}です！！！":
    "こんにちは、#{@name}と申します宜しくお願いいたします"
  end
end
user = User_30.new(name: "あじー", age: 32)
puts user.introduce
user2 = User_30.new(name: "ゆたぼん", age: 10)
puts user2.introduce



# 以下のようなコードを書くとエラーが出たので期待する出力結果となるように修正してください
# class Item
#   def initialize(name)
#     @name = name
#   end
# end

# book = Item.new("ゼロ秒思考")

# puts book.name
# 期待する出力結果

# ゼロ秒思考


puts " \n---------- < Q31 > ----------"
class Item_31
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
book = Item_31.new("ゼロ秒思考")
puts book.name



# 仕様を満たすコードを書いてください
# 名前、年齢の情報を持った「ユーザークラス」を定義してください
# 名前、入場料金の情報を持った「動物園クラス」を定義してください
# 入場料金は、幼児(05歳)、子供(612歳)、成人(1364歳)、シニア(65120歳)の4パターン設定してください(金額はお任せします)
# 動物園クラスに、ユーザークラスから生成されたインスタンスを受け取って、受けとったユーザーの年齢に応じて、入場料金を返す「check_entry_feeメソッド」を定義してください(年齢として無効な値が渡った場合は「無効な値です」と返してください)

puts " \n---------- < Q32 > ----------"
class User_32
  attr_reader :user_name, :user_age
  def initialize(**params)
    @user_name = params[:user_name]
    @user_age = params[:user_age]
  end
end

class Zoo_32
  def initialize(**params)
    @zoo_name = params[:zoo_name]
    @fee_rank1 = params[:fee_rank1]
    @fee_rank2 = params[:fee_rank2]
    @fee_rank3 = params[:fee_rank3]
  end

  #=> def メソッド（クラス頭小文字）
  def check_entry_fee(user_32)
    #=> 変数 = case （クラス頭小文字.引数）
    entry_fee = case user_32.user_age
      when 0..5 then
        @fee_rank1 
      when 6..12 then 
        @fee_rank2 
      when 13..64 then
        @fee_rank3
      else
        return puts "無効な値です"
    end
    puts "#{user_32.user_name}さんの料金は#{entry_fee}円です。"
  end
end
user1 = User_32.new(user_name: 'あじー', user_age: 5)
user2 = User_32.new(user_name: "近藤", user_age: 10)
user3 = User_32.new(user_name: "Michael", user_age: 60)
zoo = Zoo_32.new(zoo_name: 'にほん動物園', fee_rank1: 10, fee_rank2: 300, fee_rank3: 1000)
zoo.check_entry_fee(user1)
zoo.check_entry_fee(user2)
zoo.check_entry_fee(user3)


# Q33.  次の指定のキー name, age, address, tell が、Hash値のキーとして過不足無く含まれているかを判定するコードを書いてください

puts " \n---------- < Q33 > ----------"

user1_sufficient = {name: "あじー", age: 20, address: "日本", tell: 012-3456-7890}
user2_nametell_lack = {age: 20, address: "日本"}

puts user1_sufficient.key?(:name && :age && :address && :tell) ? "問題なし" : "過不足あり"
puts user2_nametell_lack.key?(:name && :age && :address && :tell) ? "問題なし" : "過不足あり"


# Q34.次のコードが成り立つようにコードを書き加えてください

#   programming_language = ["ruby", "php", "python", "javascript"]

#   p programming_language
#   p upper_case_programming_language

#   出力結果

#   ["Ruby", "Php", "Python", "Javascript"]
#   ["RUBY", "PHP", "PYTHON", "JAVASCRIPT"]

puts " \n---------- < Q34 > ----------"

programming_language = ["ruby", "php", "python", "javascript"]

capital_case_programming_language = []
programming_language.each do |cap|
  capital_case_programming_language << cap.capitalize
end
p capital_case_programming_language

upper_case_programming_language = []
programming_language.each do |upp|
  upper_case_programming_language << upp.upcase
end
p upper_case_programming_language


# Q35 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました

#   [["田中", "JavaScript"], 30]
#   上記の配列を以下のようなハッシュに変換してください
#   {"user_name" => "田中", "learning_contents" => "JavaScript", "learning_time" => 30}

puts " \n---------- < Q35 > ----------"

ary =  [["田中", "JavaScript"], 30]
values = []
keys = ["user_name", "learning_contents", "learning_time"]
ary.flatten!
ary.each do |value|
  values << value
end

array = [keys,values].transpose
h = Hash[*array.flatten]
p h


# Q36 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました

#   {["田中", "JavaScript"]=>30}
#   上記のハッシュを以下のようなハッシュに変換してください
#   {"user_name" => "田中", "learning_contents" => "JavaScript", "learning_time" => 30}

puts " \n---------- < Q36 > ----------"

a = {["田中", "JavaScript"]=>30}
b = []
keys = ["user_name", "learning_contents", "learning_time"]
values = []

a.each do |key, value|
  b << key << value
end

b.flatten!

b.each do |x|
  values << x
end

array = [keys,values].transpose
h = Hash[*array.flatten]
p h


# Q37 2つのデータベースからユーザーネーム・学習項目・合計学習時間のデータを取得したら以下のようになりました

  # {["田中", "HTML"]=>30, ["斎藤", "JavaScript"]=>50}
  # 上記のハッシュを以下のようなハッシュの配列に変換してください
  # [{"user_name" => "田中", "learning_contents" => "HTML", "learning_time" => 30},
  #     {"user_name" => "斎藤", "learning_contents" => "JavaScript", "learning_time" => 50}]

  puts " \n---------- < Q37 > ----------"
  start_hash = {["田中", "HTML"]=>30, ["斎藤", "JavaScript"]=>50}
  hash_1 = []
  keys = ["user_name", "learning_contents", "learning_time"]
  hash_2 = []
  end_hash = []
  
  start_hash.each do |key, value|
    hash_1 << key << value
  end
   
  hash_1.flatten! 
  
  mae_values = hash_1.slice(0..2)
  
  ato_values = hash_1.slice(3..5)
  
  array_1 = [keys, mae_values].transpose
  
  hash_3 = Hash[*array_1.flatten]
  
  array_2 = [keys, ato_values].transpose
  hash_4 = Hash[*array_2.flatten]
  
  p end_hash << hash_3 << hash_4