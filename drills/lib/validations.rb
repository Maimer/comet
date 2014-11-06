def valid_email?(input)
  input =~ /\A[\w]+@[a-zA-Z\d]+\.[a-zA-Z]{2,3}(\.[a-zA-Z]{2,3})?\z/
end

def valid_phone_number?(input)
  input =~ /\A\D?([0-9]{3})\D*([0-9]{3})\D*([0-9]{4})\z/
end

def valid_password?(input)
  input =~ /\A[\w\d+]{8,}\z/
end

def valid_username?(input)
  input =~ /\A[a-zA-Z]+\w*\z/
end

def valid_credit_card_number?(input)
  input =~ /\A[3456]\d{12}\d{2,3}\z/
end

def only_numbers?(input)
  input =~ /\A[0-9]+\z/
end

def only_letters?(input)
  input =~ /\A[a-zA-Z]+\z/
end

def valid_social_security?(input)
  input =~ /\A\D?([0-9]{3})\D*([0-9]{2})\D*([0-9]{4})\z/
end

def valid_zip_code?(input)
  input =~ /\A[0-9]{5}\D*[0-9]{0,4}\z/
end
