class SumString < BaseFlip

  desc "Assume a=1, b=2...z=26. Case doesn't matter. Non-alpha characters are worth zero. Sum this person's name."
    
  def input_generator
    Faker::Name.first_name + ' ' + Faker::Name.last_name
  end

  def valid_output
    count = 0
    table = ('a'..'z').inject({}) { |h, chr| h[chr] = (count += 1); h }
    input.downcase.split('').inject(0) { |sum, i| sum += (table[i] || 0) }
  end

end
