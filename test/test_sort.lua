luaunit = require('luaunit')
sorter = require('src.i18n-sorter')

dictionary = {}
dictionary.hello = "Hallo"
dictionary.apples = "Äpfel"
dictionary.survival = "Überleben"
dictionary.adam = "Adam"

strArray = {}
strArray[1] = "hello"
strArray[2] = "apples"
strArray[3] = "survival"
strArray[4] = "adam"

sortedArray = {}
sortedArray[1] = "adam"
sortedArray[2] = "hello"
sortedArray[3] = "apples"
sortedArray[4] = "survival"

sorter.sort(strArray, dictionary)
for key, value in ipairs(strArray) do
  assertEquals(value, sortedArray[key])
end

luaunit:run()

