
type t =
  | Less
  | Equal
  | Greater

let of_int (src: int): t =
  if src = 0 then Equal else if src < 0 then Less else Greater

let to_int (src: t): int =
  match src with
  | Less -> -1
  | Equal -> 0
  | Greater -> 1

let equal (a: t) (b: t): bool = (=) a b
