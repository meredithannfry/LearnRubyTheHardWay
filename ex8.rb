formatter = "%s %s %s %s"

# prints each of the numbers to terminal in string.
puts formatter % [1, 2, 3, 4]

# prints each of the words to terminal in string.
puts formatter % ["one", "two", "three", "four"]

# as far as ruby is concerned these are still string..
puts formatter % [true, false, false, true]

# even format strings are still treated as a string.... ie. outputs %s %s %s %s four times!
puts formatter % [formatter, formatter, formatter, formatter]

# outputs each of these strings too...shocker.
puts formatter % [
    "I had this thing.",
    "That you could type up right.",
    "But it didn't sing.",
    "So I said goodnight."
]