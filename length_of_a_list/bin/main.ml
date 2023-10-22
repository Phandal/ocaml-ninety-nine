(* Find the number of elements of a list. *)

let rec length input_list =
  match input_list with
  | [] -> 0
  | _::rst -> (1 + length rst)

let () =
       Printf.printf "Length of list with 4 elements: %d\n" (length ["a"; "b"; "c"; "d"]);
       Printf.printf "Length of empty list: %d\n" (length [])
