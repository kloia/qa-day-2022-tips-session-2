class DataGeneratorUtil

  def self.get_random_number(length: 5)
    o = [('0'..'9')].map(&:to_a).flatten
    (0...length).map { o[rand(o.length)] }.join
  end

  def self.get_random_string_lower_case(length: 5)
    o = [('a'..'z')].map(&:to_a).flatten
    (0...length).map { o[rand(o.length)] }.join
  end

end