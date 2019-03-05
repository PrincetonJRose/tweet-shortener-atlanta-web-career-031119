# Write your code here.
def dictionary
  {
    "hello" => 'hi',
    "to" => '2',
    "two" => '2',
    "too" => '2',
    "for" => '4',
    "four" => '4',
    "be" => 'b',
    "you" => 'u',
    "at" => '@',
    "and" => '&'
  }
end

def word_substituter(tweet)
  replacement = dictionary
  tweet_fix = tweet.split(" ")
  for index in 0...tweet_fix.size
    replacement.each do |word, replace|
      if tweet_fix[index].downcase == word
        tweet_fix[index] = replace
      end
    end
  end
  tweet_fix.join(' ')
end
