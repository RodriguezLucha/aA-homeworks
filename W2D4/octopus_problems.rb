
def sluggish_octopus(fish) # n^2
    arr = fish
    (arr.length).times do
        i = 0
        (arr.length-1).times do
            if arr[i].length > arr[i+1].length
                arr[i], arr[i+1] = arr[i+1], arr[i]
            end
            i += 1
        end
    end
    arr.last
end

def dominant_octopus(fish) # n log n
    arr = fish
    def merge_sort(arr)
        return arr if arr.size <= 1
        midpoint = arr.size / 2
        sorted_left = merge_sort(arr[0...midpoint])
        sorted_right = merge_sort(arr[midpoint..-1])
        merge(sorted_left, sorted_right)
    end
    def merge(left,right)
        results = []
        until left.empty? || right.empty?
            left.first.length < right.first.length ? results << left.shift : results << right.shift
        end
        results + left + right
    end
    merge_sort(arr).last
end


def clever_octopus(fish) # n
    largest_fish = fish.first
    fish.each {|single_fish| largest_fish = single_fish if single_fish.length > largest_fish.length }
    largest_fish
end

#Dancing Octopus
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ] 

#Slow Dance => o(n)
def slow_dance(find, array)
    array.each_with_index do |tile, index|
        return index if tile == find
    end
end

#Constant Dance! =>o(1)
def fast_dance(find, hash)
    hash[find]
end


if __FILE__ == $PROGRAM_NAME
    # Longest fish => "fiiiissshhhhhh"
    # Big O-ctopus and Biggest Fish
    all_fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
    
    p sluggish_octopus(all_fish)  # "fiiiissshhhhhh"
    p dominant_octopus(all_fish)  # "fiiiissshhhhhh"
    p clever_octopus(all_fish)    # "fiiiissshhhhhh"
    tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
    p slow_dance("up", tiles_array)             # 0
    p slow_dance("right-down", tiles_array)     # 3
    
    tiles_hash = {
        "up" => 0,
        "right-up" => 1,
        "right"=> 2,
        "right-down" => 3,
        "down" => 4,
        "left-down" => 5,
        "left" => 6,
        "left-up" => 7
    }
    p fast_dance("up", tiles_hash)             # 0
    p fast_dance("right-down", tiles_hash)     # 3
end