def longest_consecutive(item, k)
  if item.length == 0 || k < 1 || k > item.length
    return ''
  end
  string_concatination = []
  item.each_cons(k) do |word|
    strings_concatination << word.join
  end
  return strings_concatination.max{| a, b | a.length <=> b.length }
end

puts longest_consecutive(['hi', 'marbles', 'mittens', 'bye', 'lorem', 'ipsum', 'to', 'a', 'hippocampus'], 3); # -> 'marblesmittensbye'
