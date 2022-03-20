#Speed download MbxMbps

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