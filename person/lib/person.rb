class Person

  attr_reader :first_name, :last_name, :full_name

  def initialize(first, last)
    @first_name = first
    @last_name = last
  end

  def full_name
    @full_name = @first_name + " " + @last_name
  end

end
