class Array
  def my_each
    return self unless block_given?

    (0..length - 1).each do |item_idx|
      yield(self[item_idx])
    end

    self
  end

  def my_map
    return clone.to_enum unless block_given?

    result = []
    (0..length - 1).each do |item_idx|
      result << yield(self[item_idx])
    end

    result
  end

  def my_select
    return to_enum unless block_given?

    result = []
    (0..length - 1).each do |item_idx|
      result << self[item_idx] if yield(self[item_idx])
    end

    result
  end
end
