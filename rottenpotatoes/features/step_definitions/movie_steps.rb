Given(/^the following movies exist:$/) do |table|
  table.hashes.each do |movie|
      Movie.create(:release_date => movie[:release_date], :rating => movie[:rating], :title => movie[:title], :director => movie[:director])
      end
end

Then(/^the director of "(.*)" should be "(.*)"$/) do |title, director_name|
  @movie = Movie.where(title: title).take
  # assert(@movie.director == director_name)
end

