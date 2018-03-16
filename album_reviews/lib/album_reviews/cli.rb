require 'pry'
#puts "Reading cli.rb"

class AlbumReviews::CLI

  def call
    puts "This week's album reviews:"
    list_reviews
    menu
  end

  def list_reviews
    puts <<~END
    1. Album of the Week: Mount Eerie
    2. Other Reviews: Yo La Tango
    END
  end

  def menu
    input = nil
    while input != 'exit'
      puts "Which review would you like to read (1-2)? Or type 'exit' to leave."
      input = gets.strip.downcase
      case input
      when "1"
        puts "Mount Eerie is sad music."
      when "2"
        puts "Yo La Tango is not sad music."
      when "list"
        list_reviews
      else
        puts "Which album? Type 'list' to see all reviews or 'exit'."
      end
    end
  end

end
