let _ =
    let file = Unix.openfile Sys.argv.(1) [Unix.O_WRONLY; Unix.O_CREAT; Unix.O_TRUNC] 0o666 in
    at_exit (fun _ -> Unix.close file);
    let str = String.make 8 '\000' in
    while true do
        let l = Unix.read Unix.stdin str 0 8 in
        ignore (Unix.write Unix.stdout str 0 l);
        ignore (Unix.write file str 0 l)
    done
