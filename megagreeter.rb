#!/usr/bin/env ruby
class MegaGreeter
	attr_accessor :names
	def initialize(names = "Worlds")
		@names = names
	end
	def say_hi
		if @names.nil?
			puts '...'
		elsif @names.respond_to?('each')
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end
	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?('join')
			puts "Goodbye #{@names.join(", ")}. Come back soon!"
		else
			puts "Goodbye #{@names}. Come back soon!"
		end
	end
end

if __FILE__ == $0
	mega = MegaGreeter.new
	mega.say_hi
	mega.say_bye

	mega.names = "Zeke"
	mega.say_hi
	mega.say_bye

	mega.names = ["Gimli", "Gomli", "Gumli", "I Ja"]
	mega.say_hi
	mega.say_bye

	mega.names = nil
	mega.say_hi
	mega.say_bye
end
