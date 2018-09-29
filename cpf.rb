multiplier = 10
cpf = '89181212020'
digits = ''

cpf_slice = cpf[0..-3]
sum = 0
cpf[0..-3].chars.each do |n|
    sum += n.to_i * multiplier
    multiplier -= 1
end

digits << (sum % 11 < 2 ? 0 : 11 - sum % 11).to_s

multiplier = 11
sum = 0

cpf[0..-2].chars.each do |n|
    sum += n.to_i * multiplier
    multiplier -= 1
end
digits << (sum % 11 < 2 ? 0 : 11 - sum % 11).to_s
puts cpf[-2..-1]
puts digits == cpf[-2..-1]
