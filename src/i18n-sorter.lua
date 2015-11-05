local P = {}

local function sort(array, dictionary)
  local function compare(str1, str2) 
    return dictionary[str1] < dictionary[str2]
  end
  table.sort(array, compare)
end

P.sort = sort

return P
