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


def bulk_tweet_shortener(tweets)
  tweets.collect do |twit|
   puts "#{word_substituter(twit)}"
  end
end


def selective_tweet_shortener(tweets)
  binding.pry
    if tweets.length <= 140
      tweets
    else
      word_substituter(tweets)
    end
end

def shortened_tweet_truncator(tweets)
  if word_substituter(tweets).length > 140
end
  
  
end
