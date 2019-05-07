require 'pry'
def dictionary
  {"hello" => "hi",
   "to" => "2",
   "two" => "2",
   "too" => "2",
   "for" => "4",
   "For" => "4",
   "four" => "4",
   "be" => "b",
   "you" => "u",
   "at" => "@",
   "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  tweet_array.collect do |word|
    if dictionary.keys.include?(word)
      dictionary[word]
    else
      word
    end
  end.join(" ")
end



def bulk_tweet_shortener(tweets)
  tweets.collect do |twit|
   puts "#{word_substituter(twit)}"
  end
end

def selective_tweet_shortener
  tweets.collect do |twit|
    if twit.length < 140
   puts "#{word_substituter(twit)}"
  end
  end
end
