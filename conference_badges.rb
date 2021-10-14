# Write your code here.

def badge_maker name 
    "Hello, my name is #{name}."
end

def batch_badge_creator array 
    array.map { |speaker| badge_maker(speaker)}
end

def assign_rooms array 
    rooms = []
    array.each.with_index(1) do |speaker, room|
        rooms.push("Hello, #{speaker}! You'll be assigned to room #{room}!")
    end
    rooms 
end

def printer array 
    batch_badge_creator(array).each { |message| puts message }
    assign_rooms(array).each { |message| puts message }
end

