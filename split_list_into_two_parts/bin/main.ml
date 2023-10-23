(* Split a list into two parts; the length of the first part is given.
   If the length of the first part is longer than the entire list, then the first part is the list and the second part is empty *)

let split_a_list input_list size =
  let rec _split i acc = function
    | [] -> (List.rev acc, [])
    | head :: rest as ilist ->
        if i = 0 then (List.rev acc, ilist)
        else _split (i - 1) (head :: acc) rest
  in
  _split size [] input_list

let () =
  let olist = [ 1; 2; 3; 4; 5 ] in
  let flist, slist = split_a_list olist 2 in
  Printf.printf "Splitting the list [1; 2; 3; 4; 5] with size 2:\n";
  List.iter (fun x -> Printf.printf "%d\t" x) flist;
  print_endline "\n";
  List.iter (fun x -> Printf.printf "%d\t" x) slist;
  print_endline "\n"
