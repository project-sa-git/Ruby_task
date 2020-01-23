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
