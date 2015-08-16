QUARTER = 25
DIME   = 10
NICKLE = 5
PENNY  = 1
COINS = [
  QUARTER,
  DIME,
  NICKLE,
  PENNY
]
def changer(num)
  coins_to_return = []

  COINS.each do |coin|
    amt = (num / coin)
    num = num - (amt * coin)
    amt.times.map do
      coins_to_return.push(coin)
    end
  end

  return coins_to_return
end
