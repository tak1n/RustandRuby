require "fiddle"
require "fiddle/import"

module RustPoint
  extend Fiddle::Importer

  dlload "./libpoints.so"

  extern "Point* make_point(int, int)"
  extern "double get_distance(Point*, Point*)"
end


p1 = RustPoint.make_point(10, 10)
p2 = RustPoint.make_point(20, 10)

p RustPoint.get_distance(p1, p2)
