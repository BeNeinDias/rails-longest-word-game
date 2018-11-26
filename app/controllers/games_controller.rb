require 'json'
require 'uri'
require 'open-uri'
require 'net/http'

class GamesController < ApplicationController
  def new
    @letters = [*('A'..'Z')].sample(8)
  end

  def score
    @word = params[:word]
    @hash_of_word = params[:word].split("")
    # raise
    run_game(@word, @hash_of_word, @letetrs)

  end

  def run_game(word, hash_of_word, letters)
    word_valid = open("https://wagon-dictionary.herokuapp.com/#{@word}").read
    attempt = JSON.parse(word_valid)
  end
end
