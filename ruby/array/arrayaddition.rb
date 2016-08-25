VAL = 'Global'

module Foo
  VAL = 'Foo Local'

  class Bar
    def self.value1
      VAL
    end
  end
end

class Foo::Bar
  def self.value2
    VAL
  end
end


p Foo::Bar.value1
p Foo::Bar.value2