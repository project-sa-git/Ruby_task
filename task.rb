# Q1. 以下の配列から、期待された結果の配列を作成してください
# [1, 2, 3, 4, 5]
# 期待する配列
# [1, 3, 5, 7, 9]

def q1
  array = [ 1, 2, 3, 4, 5 ]
  p array.map { |n| n * 2 - 1 } 
end


# Q2. 以下の配列から、期待された結果の配列を作成してください
# ["田中", "佐藤", "佐々木", "高橋"]
# 期待する配列
# ["田中", "佐藤", "佐々木", "高橋", "斎藤"]

def q2
  array = ["田中", "佐藤", "佐々木", "高橋"]
  array << "斎藤"
  p array
end


# Q3. 以下の文字列の配列を数字だけの配列に変換してください
# ["1", "2", "3", "4", "5"]
# 期待する配列
# [1, 2, 3, 4, 5]

def q3
  array = ["1", "2", "3", "4", "5"]
  p array.map(&:to_i)
end


# Q4. 以下の二つの配列を合体させた新しい配列を作成してください
# ["dog", "cat", "fish"]
# ["bird", "bat", "tiger"]

def q4
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]
  p array1 + array2
end


# Q5. 以下の配列の中に3がいくつあるか数えるコードを書いてください
# [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

def q5
  array = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]
  count = array.count(3)
  p count
end


# Q6. 配列が空であればtrue、1つ以上の要素があればfalseを返すコードを書いてください
# 例
# []
# -> true
# [1, 5, 8, 10]
# -> false

def q6
  array = []
  p array.empty?
  array = [1, 5, 8, 10]
  p array.empty?
end


# Q7. 配列であればtrue、配列でなければfalseを返すコードを書いてください
# 例
# []
# -> true
# {}
# -> false

def q7
  array = []
  puts array.kind_of?(Array)
  array = {}
  puts array.kind_of?(Array)
end


# Q8. mapとは異なるメソッドを使って以下と全く同じ処理を実現させてください
# numbers = ["6", "5", "3", "7", "1"]
# p numbers.map {|item| item.to_i }
# -> [6, 5, 3, 7, 1]

def q8
  puts " \n---------- < Q8 > ----------"
  numbers = ["6", "5", "3", "7", "1"]
  figure_numbers = []
  numbers.each do |num|
    figure_numbers << num.to_i
  end
  p figure_numbers
end


# Q9. 以下の配列を用いて、期待通りの出力結果になるようにコードを書いてください
# ["田中", "佐藤", "佐々木", "高橋"]
# 期待結果
# 会員No.1 田中さん
# 会員No.2 佐藤さん
# 会員No.3 佐々木さん
# 会員No.4 高橋さん

def q9
  members = ["田中", "佐藤", "佐々木", "高橋"]
  members.each.with_index do |member, i|
    p "会員No.#{i+1} " + member + "さん"
  end
end


# Q10. 以下の配列の最後に山下を追加してください
# ["田中", "佐藤", "佐々木", "高橋"]

def q10
  array1 = ["田中", "佐藤", "佐々木", "高橋"]
  array2 = ["山下"]
  p array1.concat(array2)
end


# Q11 以下の配列から重複する部分だけを抽出した新しい配列を作成してください
# favorite_sport = ["フットサル", "バスケット"]
# selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]

def q11
  favorite_sport = ["フットサル", "バスケット"]
  selected_sport = ["野球", "ボルダリング", "サッカー", "フットサル"]
  p favorite_sport & selected_sport
end


# Q12 以下の配列を用いた繰り返し処理において、「うに」が含まれていれば「好物です」と表示し、そうでなければ「まぁまぁ好きです」と表示するようにコードを書いてください
# ["いか", "たこ", "うに", "しゃけ", "うにぎり", "うに軍艦", "うに丼"]

def q12
  foods = ["いか", "たこ", "うに", "しゃけ", "うにぎり", "うに軍艦", "うに丼"]
  if foods.include?("うに")
    p "好物です"
  else
    p "まぁまぁ好きです"
  end
end


# Q13. 以下の配列から奇数だけを選んだ新しい配列を作成してください
# [1, 2, 3, 4, 5]

def q13
  numbers = [1, 2, 3, 4, 5]
  odd = numbers.select(&:odd?)
  p odd
end


# Q14. 以下の配列からnilの要素を削除してください
# ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

def q14
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]
  p sports.compact
end


# Q15. 以下の配列からadminの数を数えてください
# ["admin", "user", "user", "admin", "admin"]

def q15
  arr = ["admin", "user", "user", "admin", "admin"]
  p arr.count("admin")
end


# Q16. 以下の配列をもとに期待する出力結果になるようにコードを書いてください
# ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
# 期待結果

# ユーザーの趣味一覧
# No1 サッカー
# No2 バスケ
# No3 野球
# No4 フットサル
# No5 水泳
# No6 ハンドボール
# No7 卓球
# No8 ボルダリング

def q16
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]
  sports.flatten!
  sports.uniq!
  n = 0
  puts "ユーザーの趣味一覧"
  sports.each do |sport|
    n += 1
    puts "No.#{n} " + sport
  end
end


# Q17. 以下のハッシュから name の値を取り出してください
# {name: "satou", age: 33}

def q17
  hash = {name: "satou", age: 33}
  p hash[:name]
end


# Q18. 以下のハッシュから name の値を取り出して下さい
# {user: {name: "satou", age: 33}}

def q18
  hash1 = {user: {name: "satou", age: 33}}
  puts hash1.dig(:user, :name)
end


# Q19. 以下の既存で存在する user_data に対して、 update_data の内容を反映させ user_data の内容を書き換えて下さい
# user_data = {name: "神里", age: 31, address: "埼玉"}
# update_data = {age: 32, address: "沖縄"}

def q19
  user_data = {name: "神里", age: 31, address: "埼玉"}
  update_data = {age: 32, address: "沖縄"}
  last_updated_data = user_data.merge!(update_data)
  p user_data
end


# Q20. 以下の全てのハッシュの name と age の値を取り出し、「私の名前は〜です年齢は〜歳です」と表示してください
# {name: "satou", age: 22}
# {name: "yamada", age: 12}
# {name: "takahashi", age: 32}
# {name: "nakamura", age: 41}

def q20
  users = [
    {name: "satou", age: 22},
    {name: "yamada", age: 12},
    {name: "takahashi", age: 32},
    {name: "nakamura", age: 41}
  ]
  users.each do |user|
    puts "私の名前は#{user[:name]}です年齢は#{user[:age]}歳です"
  end
end


# Q21. 以下の配列から全てのキーを取り出してターミナルに出力してください
# {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}

def q21
  puts " \n---------- < Q21 > ----------"
  user = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}

  user.each_key do |key|
    p key
  end
end


# Q22. ハッシュを格納した以下の配列を使用し、期待した結果になるようにコードを書いてください
# users = [
# {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"},
# {},
# {name: "yamada", age: 22, address: "tokyo", hobby: "soccer", email: "hoge@fuga.com"},
# {},
# {name: "suzuki", age: 44, address: "yamaguchi", hobby: "baseball", email: "hoge@fuga.com"}
# ]
# 期待結果
# ハッシュにデータがある場合：No〜 名前〜、年齢〜、趣味〜、メール〜
# ハッシュがからの場合：データなし

def q22
  puts " \n---------- < Q22 > ----------"
  users = [
  {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"},
  {},
  {name: "yamada", age: 22, address: "tokyo", hobby: "soccer", email: "hoge@fuga.com"},
  {},
  {name: "suzuki", age: 44, address: "yamaguchi", hobby: "baseball", email: "hoge@fuga.com"}
  ]
  n = 1

  users.each do |user|
    if user.empty?
      puts "データなし"
    else
      puts "No.#{n} 名前#{user[:name]}、年齢#{user[:age]}、趣味#{user[:hobby]}、メール#{user[:email]}"
      n += 1
    end
  end
end


# Q23. 以下のハッシュをキー、バリュー含め全て配列に変換してください
# {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}
# 変換後の配列
# [:name, "satou", :age, 33, :address, "saitama", :hobby, "soccer", :email, "hoge@fuga.com"]

def q23
  puts " \n---------- < Q23 > ----------"
  hash = {name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com"}
  array = []
  hash.each do |element|
    array << element
  end
  p array.flatten
end


# Q24. 以下のハッシュにおいて age というキーが含まれている場合は OK 、含まれていない場合は NG が表示されるようにしてください
# { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
# { name: "yamada", hobby: "baseball", role: "normal" }

def q24
  puts " \n---------- < Q24 > ----------"

  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  puts (data1.has_key?(:age) ? "OK" : "NG")
  puts (data2.has_key?(:age) ? "OK" : "NG")
end


# Q25. 配列 keys の各要素を、ハッシュ user がキーとして保持するかどうかを判定するコードを書いてください
# keys = [:age, :name, :hobby, :address]
# user = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
# 例（意図が伝われば文章は自由に変えていただいて大丈夫です）
# userにはageというキーがあります
# userにはaddressというキーがありません

def q25
  puts " \n---------- < Q25 > ----------"
  keys = [:age, :name, :hobby, :address]
  user = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }

  keys.each do |key|
    puts user.has_key?(key) ? "userには#{key}というキーがあります" : "userには#{key}というキーがありません"
  end
end


# Q26. 以下の２つのハッシュを合体させた新しいハッシュを作成してください
# {C: "printf", COBOL: "DISPLAY", Go: "fmt.Print", Java: "System.out.println"}
# {JavaScript: "console.log", R: "print", Ruby: "puts"}

def q26
  puts " \n---------- < Q26 > ----------"
  hash1 = {C: "printf", COBOL: "DISPLAY", Go: "fmt.Print", Java: "System.out.println"}
  hash2 = {JavaScript: "console.log", R: "print", Ruby: "puts"}
  hash3 = Hash.new
  hash3 = hash1.merge(hash2)

  puts hash3
end