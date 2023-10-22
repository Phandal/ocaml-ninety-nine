(* Find out whether a list is a palindrome. *)

let palindrome input_list =
  input_list = List.rev input_list

let () =
  Printf.printf "Is [\"h\"; \"a\"; \"n\"; \"n\"; \"a\"; \"h\"] a palindrome: %b\n" (palindrome ["h"; "a"; "n"; "n"; "a"; "h"]);
  Printf.printf "Is [\"s\"; \"t\"; \"a\"; \"r\"] a palindrome: %b\n" (palindrome ["s"; "t"; "a"; "r"])
