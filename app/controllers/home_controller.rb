class HomeController < ApplicationController
  def index
    random_phonic = ["b","d","e"] 
    @item = {
        target_word: "cat",
        elements: {
            0 => "c",
            1 => "a",
            2 => "t",
            3 => random_phonic.shuffle.first
        }
    }
  end
end
