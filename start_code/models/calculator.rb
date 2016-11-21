require('pry-byebug')

class Calculator
  def self.add(num1, num2)
    return num1 + num2
  end

  def self.subtract(num1, num2)
    return num1 - num2
  end

  def self.multiply(num1, num2)
    return num1 * num2 
  end

  def self.divide(num1, num2)
    return num1 / num2
  end

  def self.all(n1, n2)
    result = {
      add: self.add(n1, n2).to_s,
      sub: self.subtract(n1, n2).to_s,
      mult: self.multiply(n1, n2).to_s,
      div: self.divide(n1, n2).to_s
    }
    return result
  end

end