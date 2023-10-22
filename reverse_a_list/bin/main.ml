(* Reverse a list *)

let reverse input_list =
  let rec _reverse rlist olist =
    match olist with
    | [] -> rlist
    | hd::rst -> _reverse (hd::rlist) rst
  in
  _reverse [] input_list

let () =
  let olist = ["a"; "b"; "c"; "d";]
  in
  Printf.printf "Original List:\n";
  List.iter (fun ele -> Printf.printf "%s\t" ele) olist;
  print_endline "";
  Printf.printf "Reverse List:\n";
  List.iter (fun ele -> Printf.printf "%s\t" ele) (reverse olist)
