require "csv"
 puts "1{新規でメモを作成する}2{既存のメモを編集する}"
  print "文字を入力してください"

memo_type = gets.to_i

if memo_type == 1
  puts "新規でメモを作成します。拡張子を除いたファイル名を入力してください。"
 file_name = gets.to_s
  puts "メモの内容を入力してください。"
  
  
  memo = STDIN.gets.to_s.chomp
  CSV.open("#{file_name}.csv" , "w") do |csv|
    csv.puts ["#{memo}"]
  end

elsif memo_type == 2
  puts "既存のメモを編集します。拡張子を除いた既存ファイル名を入力してください。"
  
  file_name = gets.to_s
  puts "メモの内容を入力してください。"
  puts "Ctrl+Dで保存してください。"
  puts "#{file_name}.csv"
  
 memo = readlines.chomp.to_s
   
 CSV.open("{file_name}.csv" , "a") do |csv|
 csv.puts ["#{memo}"]
 end
  
else
  puts"1か2の数字を入力してください"
end
  