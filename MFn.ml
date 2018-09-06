
external id: 'a -> 'a = "%identity"

let id2 a b = a, b
let id3 a b c = a, b, c
let id4 a b c d = a, b, c, d

let const (a: 'a): 'b -> 'a = function _ -> a
