require 'fiddle'
library = Fiddle::dlopen('../target/debug/libpair.dylib')
Fiddle::Function.new(library['initialize'], [], Fiddle::TYPE_VOIDP).call

class Entity
    def initialize(name)
        @name = name
    end
end

ent1 = Entity.new("john")
ent2 = Entity.new("doe")
puts [ent1, ent2].uniq_pairs
puts [["a", "b", "c", "d", "e", "f", "g", "h"],
    [1, 2, 3, 4, 5, 6, 7, 8]].map(&:uniq_pairs)
