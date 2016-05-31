require "pry"

@total = 0

def calc(val)
	bottles = (val / 2).to_i
	remainder = (val % 2).to_f.round(2)
	if bottles < 1
		puts "not enough money, we drank #{@total} bottles"
		return
	end
	@total += bottles
	leftover = (bottles * 1.5 + remainder).to_f.round(2)
	puts "We bought #{bottles} bottles and we had $#{remainder} leftover"
	puts "After returning bottles we have #{leftover}"
	calc(leftover)
end
puts "How much money do we have?"
val = gets.chomp.to_f.round(2)
calc(val)