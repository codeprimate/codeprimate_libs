class Array
  # Interleaves this array with another
  def interleave(o)
    out = []
    each_with_index{|x,i| out << x << o[i]}
    return out.compact
  end
  
  # Finds unique values in this array using the provided block.
  # Works like Array.sort_by
  def uniq_by
    clean = []
    self.collect{|x| yield(x)}.uniq.each do |x|
      clean << self.select{|y| yield(y) == x}.last
    end
    clean
  end
end
