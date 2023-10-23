(* Start counting list elements with 0. If the position is larger or equal to
   the length of the list, insert the element at the end. (The behavior is
   unspecified if the position is negative.) *)

let rec insert_at index value = function
  | [] -> if index >= 0 then [value] else []
  | head :: rest as full -> if index = 0 then value :: full else head :: insert_at (index - 1) value rest

let () =
  let olist = [1; 2; 3; 4; 5; 6] in
  Printf.printf "Inserting 0 at index 3 in list [1; 2; 3; 4; 5; 6]\n";
  List.iter (fun x -> Printf.printf "%d\t" x) (insert_at 3 0 olist);
  Printf.printf "\n"
