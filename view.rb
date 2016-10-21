module View

  def self.get_input

    if ARGV.any?
      puts "WELCOME TO THE HOMEBASE DATABASE: "
      command = ARGV.first
      options = ARGV[1..-1]

      arg = "#{ARGV[0]}=#{ARGV[1]}"
    else
      puts "Command line paramaters required"
      false
    end
  end

  def self.display_homebases(homebase_list)
    puts "\nHERE ARE THE HOMEBASES NEAR YOU:"
    homebase_list.homebases.each_with_index do |homebase, i|
      puts "Number #{i+1}"
      puts homebase
    end
  end

  # def self.stop_loop
  #   begin
  #     while stop = STDIN.read_nonblock(1)
  #       return true if stop
  #     end
  #     # rescue IO::WaitReadable, IO::EAGAINWaitReadable
  #     #   abort
  #     return false
  #   end
  # end

  def self.party_time
    puts "\n\nPRESS ENTER FOR PARTY TIME!"
    ARGV.clear
    STDIN.gets.chomp
    # loop do
    10.times do
      system "clear"
      puts Cat.cat_frame_1
      sleep(1)
      system "clear"
      puts Cat.cat_frame_2
      sleep(1)
      # break if stop_loop
    end
  end

end
