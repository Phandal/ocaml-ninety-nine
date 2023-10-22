(* If you need so, refresh your memory about run-length-encoding: http://en.wikipedia.org/wiki/Run-length_encoding *)

type count_value = { count : int; value : string }

let encode input_list =
  let rec _encode count rle_list = function
    | [] -> []
    | [ single ] -> { count = count + 1; value = single } :: rle_list
    | first :: (second :: _ as rest) ->
        if first = second then _encode (count + 1) rle_list rest
        else _encode 0 ({ count = count + 1; value = first } :: rle_list) rest
  in
  List.rev (_encode 0 [] input_list)

let () =
  let olist =
    [ "a"; "a"; "a"; "a"; "b"; "c"; "c"; "a"; "a"; "d"; "e"; "e"; "e"; "e" ]
  in
  Printf.printf
    "RLE List of [\"a\"; \"a\"; \"a\"; \"a\"; \"b\"; \"c\"; \"c\"; \"a\"; \
     \"a\"; \"d\"; \"e\"; \"e\"; \"e\"; \"e\"]\n";
  List.iter
    (fun elem -> Printf.printf "(%d, %s)\t" elem.count elem.value)
    (encode olist);
  print_endline ""
