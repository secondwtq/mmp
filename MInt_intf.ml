
module type Infix = sig
  type t

  val (+): t -> t -> t
  val (-): t -> t -> t
  val ( * ): t -> t -> t
  val (/): t -> t -> t
end

module type M = sig
  type t

  module Infix: Infix with type t = t

  val zero: t
  val one: t
  val two: t

  val equal: t -> t -> bool

  val compare: t -> t -> MTernary.t
end

module type Std = sig
  include M

  val compare: t -> t -> int
end
