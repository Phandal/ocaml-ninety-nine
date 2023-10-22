(* Modify the result of the RLE exercise in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicats are transferred as encoded. *)

type 'a rle = One of 'a | Many of { count : int; value : 'a }

let encode inp =
  let rec _encode count rle = function
    | [] -> []
    | [ single ] ->
        if count = 0 then One single :: rle
        else Many { count = count + 1; value = single } :: rle
    | first :: (second :: _ as rest) -> (
        if first = second then _encode (count + 1) rle rest
        else
          match count with
          | 0 -> _encode 0 (One first :: rle) rest
          | _ ->
              _encode 0 (Many { count = count + 1; value = first } :: rle) rest)
  in
  List.rev (_encode 0 [] inp)

let print_rle = function
  | One v -> Printf.printf "%s\t" v
  | Many v -> Printf.printf "{ count = %d; value = %s}\t" v.count v.value

let () =
  let olist =
    [ "a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e" ]
  in
  Printf.printf
    "Modified RLE List of [\"a\"; \"a\"; \"a\"; \"a\"; \"b\"; \"c\"; \"c\"; \
     \"a\"; \"a\"; \"d\"; \"e\"; \"e\"; \"e\"; \"e\"]\n";
  List.iter print_rle (encode olist);
  print_endline ""
