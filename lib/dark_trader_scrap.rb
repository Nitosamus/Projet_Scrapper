require "rubygems"
require "nokogiri"
require "open-uri"
require "pry"

$coinmarketcap_symbols_page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
puts $coinmarketcap_symbols_page.class



 #puts coinmarketcap_symbols_page.class
 #binding.pry

#crypto_names_array0 = coinmarketcap_symbols_page.xpath("//html/body/div[2]/div[2]/div[1]/div[1]/div[3]/div[2]/div/table/tbody/tr[2274]/td[3]")


#puts coinmarketcap_page.xpath("//html/body/div[1]")
#puts crypto_names_array3 = $coinmarketcap_symbols_page.xpath("/html/body/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr[1]/td[3]").text
#binding.pry
#print crypto_names_array4 =coinmarketcap_symbols_page.xpath("/html/body/div[2]/div[2]/div[1]/div[1]/div[3]/div[2]/div/table/tbody/tr[2]/td[3]").text
#print crypto_names_array5 =coinmarketcap_symbols_page.xpath("/html/body/div[2]/div[2]/div[1]/div[1]/div[3]/div[2]/div/table/tbody/tr[3]/td[3]").text
#print crypto_names_array6 =coinmarketcap_symbols_page.xpath("/html/body/div[2]/div[2]/div[1]/div[1]/div[3]/div[2]/div/table/tbody/tr[4]/td[3]").text
#print crypto_names_array7 =coinmarketcap_symbols_page.xpath("/html/body/div[2]/div[2]/div[1]/div[1]/div[3]/div[2]/div/table/tbody/tr[5]/td[3]").text
#print crypto_names_array8 =coinmarketcap_symbols_page.xpath("/html/body/div[2]/div[2]/div[1]/div[1]/div[3]/div[2]/div/table/tbody/tr[2274]/td[3]").text
#puts "#{crypto_names_array1.each{|k| print "#{k}"}}"

#puts crypto_names_array2 = coinmarketcap_symbols_page.xpath ("//html/body/div[2]/div[2]/div[1]/div[1]/div[3]/div[2]/div/table/tbody/tr[1]/td[4]")
#puts crypto_names_array2 = coinmarketcap_symbols_page.xpath("//html/body/div[2]/div[2]/div/div/div[1]")
#puts "#{crypto_names_array2}"
#puts crypto_names_array2 = coinmarketcap_symbols_page.xpath("//a")

#puts crypto_names_array9 = coinmarketcap_symbols_page.xpath("/html/body/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr[35]/td[3]").text
#binding.pry
#puts crypto_names_array9 = coinmarketcap_symbols_page.xpath("/html/body/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr[36]/td[3]").text
#puts crypto_names_array9 = coinmarketcap_symbols_page.xpath("/html/body/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr[37]/td[3]").text

#CA MARCHE

def key_elements
	price = Array.new
	crypto_names_array2 = $coinmarketcap_symbols_page.xpath("/html/body/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody/tr/td[5]").each do |prices_elements|
	price << "#{prices_elements.text}"
	end
	return price 
end


def value_elements
	symbols = []
		crypto_names_array1 = $coinmarketcap_symbols_page.xpath("/html/body/div[2]/div[2]/div/div/div[3]/div[2]/table/tbody//tr/td[3]").each do |symbols_elements|
		symbols << symbols_elements.text
		#{symbols_elements.text()}"
	end
	return symbols
end
#def get_array(create_hashes)
#	final_array = Array.new()
#end

def final_array_result
	key = key_elements
	value = value_elements
	table = []
	key.length.times do |k| 
		table << { value[k] => key[k]}
	end
	return table
end

puts final_array_result