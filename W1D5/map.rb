class Map
  def initialize
    @arr = []
  end

  def set(key, value)
    found = get(key)

    if found.nil?
      @arr.push([key, value])
    else
      pair = @arr.select do |element|
        element[1] = value if element.first == key
      end
    end
  end

  def get(key)
    pair = @arr.select { |element| element.first == key }
    pair.last
  end

  def delete(key)
    return nil if @arr.empty?

    @arr.delete_if do |el|
      key == el.first
    end
  end

  def show
    p @arr
  end
end

if $PROGRAM_NAME == __FILE__

  my_map = Map.new
  my_map.set('dog', 'foxy')
  my_map.set('cat', 'whiskers')
  my_map.set('fish', 'plecto')
  my_map.set('dog', 'toby')
  my_map.delete('fish')
  my_map.show # dog -> toby , cat -> whiskers

end
