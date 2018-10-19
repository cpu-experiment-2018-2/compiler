let assoc_opt x lis =
  match List.find_opt (fun (y, z) -> y = x) lis with
  | Some (y, z) -> Some z
  | None -> None
