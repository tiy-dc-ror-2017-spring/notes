class Element
  def initialize(type)
    @type = type
  end

  def type
    @type.upcase
  end

  def +(other)
    molecule = type + other.type
    return Element.new(molecule)
  end
end

oxygen = Element.new("O")
hydrogen1 = Element.new("H")
hydrogen2 = Element.new("H")

water = hydrogen1.+(hydrogen2.+(oxygen))
water.type

water = hydrogen1 + hydrogen2 + oxygen
water.type
