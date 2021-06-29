# queen-problem
Provided an IPv4 address, say 8.8.8.8, use a RESTful client to get the result from ipinfo.io (e.g. http://ipinfo.io/8.8.8.8) and take the altitude geocoordinate, casting it to an integer N. Then, use N to construct an N x N chess board. Randomly assign N/2 unique coordinates on which a Queen will sit. No other pieces will be on the board. Your program should then determine if all of the queens are placed in such a way where none of them are attacking each other. If they are attacking it should show the coordinates of killing each other



# to run the program
* open the terminal
* run "irb" command it ll redirect you to the ruby console.
* require_relative 'queen' #to load queen.rb file
* Queen.attacking? #to call the attacking method described.


Desired Output:

nitesh@green-apex ~/personal/queen-problem (main) $ irb
3.0.1 :001 > require_relative 'queen'
 => true 
3.0.1 :002 > Queen.attacking?

 
 
=====================================================================================> 
 
Hi, nitesh
 
Please select an option from below list 
 1 for Default ip i.e 8.8.8.8 
 2 for your own ip 
 or press any key for entering an ip 


Enter the IP or leave it blank and press enter for your own ip : 
 


 
 fetching data from https://ipinfo.io is in progress... 
 
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   272  100   272    0     0    342      0 --:--:-- --:--:-- --:--:--   342

 
Your IP is 223.228.231.194 and you are from Patna, Bihar, IN 

value of N for our chess problem is 25

 
 
 => 
[[[13, 6], [6, 6]],
 [[13, 6], [13, 24]],
 [[13, 6], [13, 15]],
 [[25, 13], [19, 13]],
 [[15, 5], [1, 19]],
 [[19, 13], [19, 24]],
 [[7, 15], [13, 15]],
 [[13, 24], [19, 24]],
 [[13, 24], [13, 15]]] 
