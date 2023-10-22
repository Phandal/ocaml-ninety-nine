(* Find the N'th element of a list *)

let rec nth_of_a_list input_list idx =
  match input_list with
  | [] -> raise (Failure "out of bounds error")
  | hd::rst -> if idx = 0 then hd else nth_of_a_list rst (idx - 1)

let () = Printf.printf "2nd element of list: %s\n" (nth_of_a_list ["a"; "b"; "c"; "d"; "e"] 2);
         Printf.printf "2nd element of list with a single element: %s\n" (try nth_of_a_list ["a"] 2 with Failure msg -> msg);
         Printf.printf "2nd element of empty list: %s\n" (try nth_of_a_list [] 2 with Failure msg -> msg)
