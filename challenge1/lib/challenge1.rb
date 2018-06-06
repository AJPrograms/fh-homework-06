class Challenge1
  def self.balanced?(string)
    array = string.chars
    open_chars = ["(", "{", "["]
    close_chars = [")", "}", "]"]

    stack = []

    array.each do | char |
      if open_chars.include?( char )
        stack.push( char )
      elsif close_chars.include?( char )
        if stack.empty? || !valid_pair?(stack.last, char)
          return false
        else
          stack.pop
        end
      end
    end

    stack.empty?
  end

  def self.valid_pair?(opening, closing)
    return true if opening == "(" && closing == ")"
    return true if opening == "{" && closing == "}"
    return true if opening == "[" && closing == "]"
    false
  end
      




    # your implementation goes here

    #if string.chars.first == string.chars.last
      #return true
=begin
    if str.include? '('
      if str.include? ')'
        return true
      elsif str.include? '['
        if str.include? ']'
          return true
      elsif str.include? '{'
        if str.include? '}'
          return true


    n = 0;
    if string.include? '(', '{', '['
      n - 1;
    elsif string.include? ')', '}', ']'
      n + 1;
      if n = 0
        return true
      else
        return false
  end
=end
end


