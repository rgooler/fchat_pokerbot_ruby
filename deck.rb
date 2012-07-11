#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-

class Deck
  attr_accessor :deck
  attr_accessor :num_decks


  def initialize(decks=1)
    @num_decks = decks
    self.send('generate')
  end

  # Draw 5 cards for the game
  def draw()
    hand = @deck.pop(5)
    p hand
    if @deck.length() <= 5
      self.send('generate')
    end
    return hand.join(" ")
  end

  def generate()
    @deck = Array.new()
    @num_decks.times { |i|
      ['♠', '♣', '♥', '♦'].each do |suit|
        %w{A 2 3 4 5 6 7 8 9 10 J Q K}.each do |rank|
          @deck << "#{rank}#{suit}"
        end
      end
    }
    @deck.shuffle!
    p @deck
  end

end

