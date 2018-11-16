# task 7
class Bracket
  def check_validate(string, brackets_pairs, brackets_symbols)
    arr = string.split("")
    if brackets_pairs.has_key?(string[0])
      array_of_symbols = []
      arr.each do |x|
        array_of_symbols << x if brackets_symbols.include? x
      end

      arr_compare_results = []
      if (array_of_symbols.count % 2).zero?
        i = 0
        c = array_of_symbols.length - 1
        while i < array_of_symbols.count / 2
          x = array_of_symbols[c] == brackets_pairs["#{array_of_symbols[i]}"]
          i += 1
          c -= 1
          arr_compare_results << x
        end

        if arr_compare_results.include? false
          puts 'fail, you made a mistake in this string'
        else
          puts 'Good job, buddy!'
        end
      else
        puts 'The number of characters must be a couples'
      end

    else
      puts "the string must start with symbols #{brackets_pairs.keys}"
    end
  end
end
brackets_pairs = {"(" => ")", "{" => "}", "[" => "]"}
brackets_symbols = ["(", ")", "{", "}", "[", "]"]

# Try this strings:
 string = '{(aaa})'
# string = '{(aaa)'
# string = '{(aaa)}'

Bracket.new.check_validate(string, brackets_pairs, brackets_symbols)
