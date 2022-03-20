# 18. Make a program that asks for the size of a file to download (in MB) and the speed of a
# Internet link (in Mbps), calculate and report the approximate download time of the file using this
# link (in minutes).

def speed_download

    puts "What is the size of the download file?"

      size = gets.chomp.to_f

    
    puts "What is the speed of internet?"

      speed = gets.chomp.to_f

     speed1 = speed/8


    seconds = size / speed1

    speed_minuts = seconds/60


    puts "The speed for download in minuts is #{speed_minuts}"





end

speed_download