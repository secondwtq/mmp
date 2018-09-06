
open MMeta

module M = struct
  type t = int

  module Infix = struct
    type t = int

    let (+) (a: t) (b: t): t = (+) a b
    let (-) (a: t) (b: t): t = (-) a b
    let ( * ) (a: t) (b: t): t = ( * ) a b
    let (/) (a: t) (b: t): t = (/) a b
    (* let ( ** ) (a: t) (b: t): t = ( ** ) a b *)
  end

  let add (a: t) (b: t): t = (+) a b
  let sub (a: t) (b: t): t = (-) a b
  let mul (a: t) (b: t): t = ( * ) a b
  let div (a: t) (b: t): t = (/) a b

  let equal (a: t) (b: t): bool = (=) a b

  let minus_one: t = -1
  let zero: t = 0
  let one: t = 1
  let two: t = 2

  let compare (a: t) (b: t): MTernary.t =
    Pervasives.compare a b |> MTernary.of_int

end

include M

module Std = struct
  include M
  let compare (a: t) (b: t): int = Pervasives.compare a b
end
