class HomeController < ApplicationController
  def index
    all_phonics = ('a'..'z').to_a
    target_words = ["and", "bad", "bet", "big", "box", "can", "cat", "cup", 
                    "cut", "dog", "get", "had", "has", "him", "his", "hot", 
                    "let", "lot", "man", "not", "pet", "put", "red", "run", 
                    "sit", "top", "yes", "yet"]
    current_word = target_words.shuffle.first
    random_phonics = all_phonics - current_word.split("")
    @item = {
        target_word: current_word,
        elements: {
            0 => current_word[0],
            1 => current_word[1],
            2 => current_word[2],
            3 => random_phonics.shuffle.first
        }
    }
  end
end
