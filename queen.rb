# N Queen’s Problem With a Twist

class Queen

  require 'json'
  
	def self.attacking?
		# just for better user interaction
		name = `whoami`
		puts"\n \n \n=====================================================================================> \n "
		puts "Hi, #{name} \n"
		puts "Please select an option from below list \n 1 for Default ip i.e 8.8.8.8 \n 2 for your own ip \n or press any key for entering an ip \n"
		option = gets.chomp
		if option == "1"
			ip = "8.8.8.8"
		elsif option == "2"
			ip = ""
		else
			puts "\nEnter the IP or leave it blank and press enter for your own ip : \n \n"
			ip = gets.chomp
		end
		#use a RESTful client to get the result from ipinfo.io
		#we can use RestClient or HttpParty gem here but i prefered curl system command to remove dependency of external gems
		puts "\n \n fetching data from https://ipinfo.io is in progress... \n \n"
		response = `curl https://ipinfo.io/#{ip}`
		parsed_response = JSON.parse(response)
		puts "\n \nYour IP is #{parsed_response['ip']} and you are from #{parsed_response['city']}, #{parsed_response['region']}, #{parsed_response['country']} \n"
		#altitude geocoordinate, casting it to an integer N
		board_size = parsed_response["loc"].split(',').first.to_i
		puts "\nvalue of N for our chess problem is #{board_size}\n"
		#total possible moves in N x N chess board
		total_moves = (1..board_size).to_a.repeated_permutation(2).to_a
		#Randomly assign N/2 unique coordinates on which a Queen will sit
		queen_position = total_moves.sample((board_size/2).floor)
		#All possible combination of Queen sit
		queen_combination = queen_position.combination(2).to_a
		#check horizantal, vertical and diagonal move
		killing_coordinates = queen_combination.select { |pair| pair[0][1] == pair[1][1] || pair[0][0] == pair[1][0] || (pair[0][0] - pair[1][0]).abs == (pair[0][1] - pair[1][1]).abs }
		puts "\n \n \n"
		killing_coordinates.any? ? killing_coordinates : "All of the queens are placed in such a way where none of them are attacking each other"
	end
end