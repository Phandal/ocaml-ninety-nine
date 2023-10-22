(* Write a function last : 'a list -> 'a option that returns the last element of a list *)

let rec last inp =
  match inp with
  | [] -> None
  | [single] -> Some single
  | _::rst -> last rst

let () = Printf.printf "Last of the list: %s\n" (Option.value (last ["a"; "b"; "c"; "d"]) ~default: "NONE");
         Printf.printf "Last of an empty list: %s\n" (Option.value (last []) ~default: "NONE")
