# 7.a
def get_action(color)
  traffic_light = { red: 'Stay!',
                    yellow: 'Get ready!',
                    green: 'Go!' }

  traffic_light[:"#{color.downcase.to_sym}"]
end

puts 'Enter "q" to quit'

loop do
  begin
    print 'Enter traffic light color: '
    input = $stdin.gets.encode('UTF-8').chomp

    exit if input == 'q'

    action = get_action(input)

    raise StandardError.new('Traffic light does not have such color') unless action

    puts action
  rescue StandardError => e
    until action
      print "#{e.message}. Try again: "
      input = $stdin.gets.encode('UTF-8').chomp

      action = get_action(input)
    end

    puts action
  end
end
