class Wallet
  attr_reader :cents

  def initialize
    @cents = 0
    @coins = []
  end

  def << coin
    @coins << coin
    if coin == :penny
      @cents += 1
    elsif coin == :nickel
      @cents += 5
    elsif coin == :dime
      @cents += 10
    elsif coin == :quarter
      @cents += 25
    else
      @cents
    end
  end

  def take(coin1, coin2=nil)
    if @coins.include?(coin1) == false
      @cents
    else
      if coin1 == :penny
        @cents -= 1
      elsif coin1 == :nickel
        @cents -= 5
      elsif coin1 == :dime
        @cents -= 10
      elsif coin1 == :quarter
        @cents -= 25
      else
        @cents
      end

      if coin2 == :penny
        @cents -= 1
      elsif coin2 == :nickel
        @cents -= 5
      elsif coin2 == :dime
        @cents -= 10
      elsif coin2 == :quarter
        @cents -= 25
      else
        @cents
      end
    end
  end
end
