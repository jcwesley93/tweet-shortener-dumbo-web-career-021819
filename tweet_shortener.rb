# Write your code here.
def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "For" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'
  }
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word)
      word = dictionary[word]
    else word
    end
  end.join(" ")
end

def bulk_tweet_shortener(array)
  #takes in an array of tweets, and shortens them like above.
  shortened_tweets = []
  array.map do|tweet|
    puts word_substituter(tweet)
    end
end
