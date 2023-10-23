(* Remove the K'th element from a list.
   The first element of the list is numbered 0, the second 1,... *)

let rec remove_kth index = function
  | [] -> []
  | head :: rest -> if index <> 0 then head :: remove_kth (index - 1) rest else rest

let () =
  let olist = [1; 2; 3; 4; 5; 6] in
  Printf.printf "Remove 2nd indexed element from list [1; 2; 3; 4; 5; 6]:\n";
  List.iter (fun x -> Printf.printf "%d\t" x) (remove_kth 3 olist);
  print_endline "\n"
