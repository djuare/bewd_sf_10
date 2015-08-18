#1 - Pull the json from the reddit API via http://www.reddit.com/.json
# - http://mashable.com/stories.json (homework)
# - http://digg.com/api/news/popular.json (Homework)
#2 - Parse it using the JSON library
#3 - Find the stories based on techniques used in the code_along (max of 25 provided)
#4 - Create a new story hash out of each story with the following keys :title, :upvotes and :category
    #title, #category and #upvotes may not be the names use
#5 - Add each story to an array
#6 - Print each story from the array on your "Front Page"
#7 - BONUS ### create an 'csv' file using the api data & Ruby's CSV library
     # -> http://ruby-doc.org/stdlib-2.2.2/libdoc/csv/rdoc/CSV.html
         #title, upvote, category are the required columns

require 'rest-client'
require 'pry'
require 'json'

#def connect_to_api(url)
#  get_data = RestClient.get(url)
#  JSON.parse(get_data)
#end

#reddit_url = "http://www.reddit.com/.json"
#connect_to_api(reddit_url)

# Connect to the API

def connect_to_api(url)
  response = RestClient.get(url)
  JSON.parse(response)
end

def find_stories(response)
  stories = response["data"]["children"]
  puts "*** Reddit has blessed us with #{stories.count} ***"
  return stories
end

def print_stories(stories)
  stories.each do |story|
    create_story_hash(story["data"])
    puts "Title: #{story["data"]["title"]}"
  end
end

def create_story_hash(story)
  new_story = {category: story["subreddit"], title: story["title"], upvotes: story["ups"]}
  puts new_story

end

# mashable beg


def connect_to_mashable_api(url)
  response = RestClient.get(url)
  JSON.parse(response)
end


def find_stories(response)
  stories = response["data"]["children"]
  puts "*** Reddit has blessed us with #{stories.count} ***"
  return stories
end


def print_stories(story_mash)
  storiesmash.each do |story|
    create_story_hash(story["data"])
    puts "Title: #{story_mash["data"]["title"]}"
  end
end



reddit_url = "http://www.reddit.com/.json"
reddit_json_response = connect_to_api(reddit_url)
stories = find_stories(reddit_json_response)
print_stories(stories)

mashable = "http://mashable.com/stories.json" 
mashable_json_response = connect_to_mashable_api(mashable)
stories_mashablej = find_stories(mashable_json_response)
print_stories(stories_mash)









#find_stories(reddit_json_response)
# puts " What is the title of your post?"
# title_input = gets.strip
# the title from gets.strip will be added to a new hash
# refer to the structure of the hash under create_story_hash def
# one we get the title, we will ask for the category
# category input gets.strip
