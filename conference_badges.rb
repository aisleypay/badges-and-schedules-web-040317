def badge_maker (name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator (array_of_names)
  formatted_names = []

  array_of_names.each do |name|
    formatted_names << badge_maker(name)
  end

  formatted_names
end

def assign_rooms (speakers)
  room_assignments = Hash.new
  room_message = []

  speakers.each_with_index { |speaker, idx|
    room_assignments[speaker] = idx + 1
  }

  room_assignments.each do |speaker, idx|
    room_message << "Hello, #{speaker}! You'll be assigned to room #{idx}!"
  end

  room_message
end

def printer (attendees)
  batch_badge_creator(attendees).each { |attendee|
    puts attendee
  }

  assign_rooms(attendees).each { |attendee|
    puts attendee
  }

end
