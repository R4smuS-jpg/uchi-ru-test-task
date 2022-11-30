# 6.a
def c_to_f(celsium_degrees)
  celsium_degrees * 1.8 + 32
end

# 6.b
print 'Enter celsium degrees: '
cels_deg = $stdin.gets.encode('UTF-8').chomp

number_regexp = /^\d+\.*\d+$|^\d+$/

loop do
  begin
    if cels_deg =~ number_regexp
      puts "Fahrenheit degrees: #{c_to_f(cels_deg.to_f)}"
      break
    else
      raise StandardError.new('Input is not a number')
    end
  rescue StandardError => e
    print "#{e.message}. Try again: "
    cels_deg = $stdin.gets.encode('UTF-8').chomp
  end
end
