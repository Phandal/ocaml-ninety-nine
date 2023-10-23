(* Duplicate the elements of a list *)

let rec duplicate = function
  | [] -> []
  | first::rest -> first :: first :: duplicate rest

let () =
  Printf.printf "Duplicate of list [1; 2; 3; 4]:\n";
  List.iter (fun x -> Printf.printf "%d\t" x) (duplicate [ 1; 2; 3; 4 ]);
  print_endline ""
