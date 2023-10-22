(* Find the last but one (last and penultimate) elements of a list. *)
let rec last_two inp =
  match inp with
  | [] | [_] -> None
  | penult::[last] -> Some (penult, last)
  | _::rst -> last_two rst

let (penult, last) = Option.value (last_two ["a"; "b"; "c"; "d"]) ~default: ("None", "None")
let () = Printf.printf "Last two of list: (%s, %s)\n" penult last

let (penult, last) = Option.value (last_two ["a"]) ~default: ("None", "None")
let () = Printf.printf "Last two of list with one element: (%s, %s)\n" penult last

let (penult, last) = Option.value (last_two []) ~default: ("None", "None")
let () = Printf.printf "Last two of empty list: (%s, %s)\n" penult last
