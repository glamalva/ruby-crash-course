def weekday
    current_time = Time.new
    current_time.strftime("%A")
end

def movie_listing(title, rank =0)
    puts "#{weekday.upcase}: #{title.capitalize} has a rank of #{rank}"
end 



movie_listing("goonies", 3)
puts movie_listing("other")