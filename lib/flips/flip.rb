require 'faker'

class Flip #< Flipcode::AbstractFlip
  def input
    @input ||= input_generator
  end

  def validate_submission(code)
    validate_output(code.call(input))
  end

  @@flips = []
  def self.desc(description)
    @@flips << self.class
    @@description = description
  end

  def self.flips
    @@flips
  end

  def desc
    @@description
  end

  def random_word
    Faker::Lorem.words(1).first
  end

  def random_whitespace
    chars = [ " ", "\t", "\n" ] 
    ws = ''
    rand(15).times { ws << chars.rand } 
    ws
  end

  def validate_output(output)
    output == valid_output
  end

end
