exit
StandardError.ancestors
Float.ancestors
1.class.ancestors
String.ancestors
Hash.new
Hash.class
Hash.ancestors
ls {}
ls []
ObjectSpace
ObjectSpace.each_object(Class).to_a
ObjectSpace.each_object(Class).select {|klass| klass.ancestors.include?(Enumerable)}
exit
