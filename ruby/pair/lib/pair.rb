require 'fiddle'
library = Fiddle::dlopen('native/libpair.dylib')
Fiddle::Function.new(library['initialize'], [], Fiddle::TYPE_VOIDP).call