type token =
  | BOOL of (bool)
  | INT of (int)
  | FLOAT of (float)
  | NOT
  | EOF
  | MINUS
  | PLUS
  | MINUS_DOT
  | PLUS_DOT
  | AST_DOT
  | AST
  | SLASH_DOT
  | SLASH
  | EQUAL
  | LESS_GREATER
  | LESS_EQUAL
  | GREATER_EQUAL
  | LESS
  | GREATER
  | IF
  | THEN
  | ELSE
  | IDENT of (string)
  | LET
  | IN
  | REC
  | COMMA
  | DOT
  | LESS_MINUS
  | SEMICOLON
  | LPAREN
  | RPAREN

open Parsing;;
let _ = parse_error;;
# 2 "src/parser.mly"
open Syntax
exception ParseError
 
let getdebug () = 
    let p = (Parsing.symbol_start_pos ()) in
    let pos = 
    {
    line = p.Lexing.pos_lnum;
    col = p.Lexing.pos_cnum ;
    bol = p.Lexing.pos_bol;
    }
    in 
    {
        pos = 
        Source(pos)
    }
    let alpha() = 
        let s = genvar() in
        {
            name = s;
            debug = getdebug();
            ty = Type.TyVar(Type.genvar());
        }
# 62 "src/parser.ml"
let yytransl_const = [|
  260 (* NOT *);
    0 (* EOF *);
  261 (* MINUS *);
  262 (* PLUS *);
  263 (* MINUS_DOT *);
  264 (* PLUS_DOT *);
  265 (* AST_DOT *);
  266 (* AST *);
  267 (* SLASH_DOT *);
  268 (* SLASH *);
  269 (* EQUAL *);
  270 (* LESS_GREATER *);
  271 (* LESS_EQUAL *);
  272 (* GREATER_EQUAL *);
  273 (* LESS *);
  274 (* GREATER *);
  275 (* IF *);
  276 (* THEN *);
  277 (* ELSE *);
  279 (* LET *);
  280 (* IN *);
  281 (* REC *);
  282 (* COMMA *);
  283 (* DOT *);
  284 (* LESS_MINUS *);
  285 (* SEMICOLON *);
  286 (* LPAREN *);
  287 (* RPAREN *);
    0|]

let yytransl_block = [|
  257 (* BOOL *);
  258 (* INT *);
  259 (* FLOAT *);
  278 (* IDENT *);
    0|]

let yylhs = "\255\255\
\001\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\005\000\009\000\009\000\006\000\
\006\000\007\000\007\000\004\000\008\000\008\000\000\000"

let yylen = "\002\000\
\002\000\003\000\002\000\001\000\001\000\001\000\001\000\005\000\
\001\000\002\000\002\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\003\000\006\000\002\000\003\000\
\003\000\003\000\003\000\006\000\005\000\002\000\001\000\008\000\
\007\000\003\000\002\000\001\000\004\000\002\000\001\000\002\000\
\001\000\003\000\003\000\001\000\003\000\003\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\036\000\004\000\005\000\006\000\000\000\000\000\
\000\000\000\000\044\000\000\000\000\000\047\000\000\000\000\000\
\007\000\000\000\010\000\011\000\023\000\000\000\000\000\000\000\
\000\000\003\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\002\000\000\000\
\000\000\000\000\000\000\026\000\012\000\027\000\013\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\038\000\000\000\
\000\000\046\000\045\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\008\000\000\000\000\000\000\000"

let yydgoto = "\002\000\
\014\000\015\000\016\000\017\000\051\000\047\000\018\000\053\000\
\078\000"

let yysindex = "\010\000\
\109\255\000\000\000\000\000\000\000\000\000\000\109\255\109\255\
\109\255\109\255\000\000\243\254\003\255\000\000\047\002\050\255\
\000\000\232\254\000\000\000\000\000\000\221\255\254\254\254\254\
\008\255\000\000\140\255\000\000\109\255\109\255\109\255\109\255\
\109\255\109\255\109\255\109\255\109\255\109\255\109\255\109\255\
\109\255\109\255\109\255\109\255\250\254\029\255\085\255\109\255\
\109\255\254\254\034\255\033\255\248\254\109\255\000\000\018\255\
\018\255\018\255\018\255\000\000\000\000\000\000\000\000\047\001\
\047\001\047\001\047\001\047\001\047\001\194\002\147\002\109\255\
\031\255\029\255\194\002\072\002\254\254\049\255\109\255\254\254\
\254\254\051\255\097\002\167\255\109\255\109\255\000\000\109\255\
\147\002\000\000\000\000\109\255\109\255\037\255\194\255\172\002\
\147\002\122\002\147\002\109\255\000\000\109\255\172\002\147\002"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\090\000\
\000\000\144\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\168\000\000\000\032\000\117\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\195\000\
\222\000\249\000\020\001\000\000\000\000\000\000\000\000\051\001\
\082\001\109\001\136\001\163\001\187\001\204\001\250\001\000\000\
\000\000\063\000\217\001\000\000\053\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\002\002\000\000\000\000\000\000\000\000\001\000\000\000\231\001\
\043\255\000\000\015\002\000\000\000\000\000\000\244\001\020\002"

let yygindex = "\000\000\
\000\000\006\000\240\255\045\000\000\000\000\000\000\000\000\000\
\249\255"

let yytablesize = 980
let yytable = "\046\000\
\008\000\048\000\003\000\004\000\005\000\006\000\007\000\008\000\
\011\000\009\000\001\000\023\000\019\000\020\000\021\000\022\000\
\024\000\081\000\027\000\011\000\054\000\010\000\082\000\072\000\
\011\000\012\000\033\000\034\000\035\000\036\000\074\000\041\000\
\013\000\026\000\056\000\057\000\058\000\059\000\060\000\061\000\
\062\000\063\000\064\000\065\000\066\000\067\000\068\000\069\000\
\070\000\071\000\004\000\005\000\006\000\075\000\076\000\073\000\
\025\000\079\000\080\000\083\000\085\000\088\000\040\000\092\000\
\100\000\039\000\037\000\050\000\052\000\087\000\000\000\011\000\
\000\000\000\000\000\000\000\000\045\000\084\000\000\000\013\000\
\000\000\000\000\000\000\000\000\089\000\004\000\005\000\006\000\
\000\000\009\000\095\000\096\000\000\000\097\000\077\000\000\000\
\000\000\098\000\099\000\000\000\000\000\000\000\000\000\000\000\
\000\000\103\000\011\000\104\000\003\000\004\000\005\000\006\000\
\007\000\008\000\013\000\009\000\030\000\000\000\000\000\000\000\
\000\000\077\000\000\000\000\000\090\000\091\000\000\000\010\000\
\000\000\000\000\011\000\012\000\000\000\000\000\000\000\000\000\
\000\000\000\000\013\000\000\000\000\000\000\000\000\000\031\000\
\029\000\030\000\031\000\032\000\033\000\034\000\035\000\036\000\
\037\000\038\000\039\000\040\000\041\000\042\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\043\000\000\000\035\000\
\044\000\000\000\055\000\029\000\030\000\031\000\032\000\033\000\
\034\000\035\000\036\000\037\000\038\000\039\000\040\000\041\000\
\042\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\043\000\000\000\015\000\044\000\000\000\094\000\029\000\030\000\
\031\000\032\000\033\000\034\000\035\000\036\000\037\000\038\000\
\039\000\040\000\041\000\042\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\043\000\000\000\014\000\044\000\000\000\
\101\000\029\000\030\000\031\000\032\000\033\000\034\000\035\000\
\036\000\037\000\038\000\039\000\040\000\041\000\042\000\000\000\
\049\000\000\000\000\000\000\000\000\000\000\000\043\000\000\000\
\025\000\044\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\008\000\008\000\008\000\000\000\008\000\008\000\008\000\
\008\000\008\000\008\000\008\000\008\000\008\000\008\000\008\000\
\008\000\008\000\008\000\024\000\008\000\008\000\008\000\000\000\
\008\000\000\000\008\000\008\000\000\000\008\000\008\000\008\000\
\041\000\041\000\041\000\000\000\041\000\041\000\041\000\041\000\
\041\000\041\000\041\000\041\000\041\000\041\000\041\000\041\000\
\041\000\041\000\016\000\041\000\041\000\041\000\000\000\041\000\
\000\000\041\000\000\000\000\000\041\000\041\000\041\000\040\000\
\040\000\040\000\000\000\040\000\040\000\040\000\040\000\040\000\
\040\000\040\000\040\000\040\000\040\000\040\000\040\000\040\000\
\040\000\019\000\040\000\040\000\040\000\000\000\040\000\000\000\
\040\000\000\000\000\000\040\000\040\000\040\000\009\000\009\000\
\009\000\009\000\009\000\009\000\009\000\009\000\009\000\009\000\
\009\000\009\000\009\000\009\000\017\000\009\000\009\000\000\000\
\000\000\009\000\000\000\009\000\000\000\000\000\009\000\000\000\
\009\000\030\000\030\000\030\000\030\000\030\000\030\000\030\000\
\030\000\030\000\030\000\030\000\030\000\030\000\030\000\018\000\
\030\000\030\000\000\000\000\000\030\000\000\000\030\000\000\000\
\000\000\030\000\000\000\030\000\031\000\031\000\031\000\031\000\
\031\000\031\000\031\000\031\000\031\000\031\000\031\000\031\000\
\031\000\031\000\020\000\031\000\031\000\000\000\000\000\031\000\
\000\000\000\000\000\000\000\000\031\000\035\000\031\000\035\000\
\035\000\035\000\035\000\035\000\035\000\035\000\035\000\035\000\
\035\000\035\000\021\000\035\000\035\000\000\000\000\000\035\000\
\000\000\035\000\000\000\000\000\035\000\000\000\035\000\015\000\
\015\000\015\000\015\000\043\000\000\000\000\000\000\000\015\000\
\015\000\015\000\015\000\015\000\015\000\000\000\015\000\015\000\
\042\000\000\000\015\000\000\000\015\000\000\000\000\000\015\000\
\000\000\015\000\014\000\014\000\014\000\014\000\022\000\000\000\
\000\000\000\000\014\000\014\000\014\000\014\000\014\000\014\000\
\000\000\014\000\014\000\033\000\000\000\014\000\000\000\014\000\
\000\000\034\000\014\000\000\000\014\000\025\000\025\000\025\000\
\025\000\029\000\000\000\000\000\000\000\025\000\025\000\025\000\
\025\000\025\000\025\000\000\000\025\000\025\000\028\000\000\000\
\025\000\000\000\025\000\032\000\000\000\025\000\000\000\025\000\
\024\000\024\000\024\000\024\000\000\000\000\000\000\000\000\000\
\024\000\024\000\024\000\024\000\024\000\024\000\000\000\024\000\
\024\000\000\000\000\000\024\000\000\000\024\000\028\000\000\000\
\024\000\000\000\024\000\029\000\030\000\031\000\032\000\033\000\
\034\000\035\000\036\000\000\000\000\000\000\000\000\000\016\000\
\016\000\016\000\016\000\016\000\016\000\000\000\016\000\016\000\
\000\000\000\000\016\000\000\000\016\000\000\000\000\000\016\000\
\000\000\016\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\019\000\019\000\
\019\000\019\000\019\000\019\000\000\000\019\000\019\000\000\000\
\000\000\019\000\000\000\019\000\000\000\000\000\019\000\000\000\
\019\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\017\000\017\000\017\000\017\000\017\000\017\000\000\000\
\017\000\017\000\000\000\000\000\017\000\000\000\017\000\000\000\
\000\000\017\000\000\000\017\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\018\000\018\000\018\000\018\000\
\018\000\018\000\000\000\018\000\018\000\000\000\000\000\018\000\
\000\000\018\000\000\000\000\000\018\000\000\000\018\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\020\000\
\020\000\020\000\020\000\020\000\020\000\000\000\020\000\020\000\
\000\000\000\000\020\000\000\000\020\000\000\000\000\000\020\000\
\000\000\020\000\000\000\000\000\000\000\000\000\000\000\021\000\
\021\000\021\000\021\000\021\000\021\000\000\000\021\000\021\000\
\000\000\000\000\021\000\000\000\021\000\000\000\000\000\021\000\
\000\000\021\000\000\000\000\000\000\000\000\000\000\000\043\000\
\043\000\000\000\000\000\043\000\000\000\043\000\000\000\000\000\
\043\000\000\000\043\000\000\000\042\000\042\000\000\000\000\000\
\042\000\000\000\042\000\000\000\000\000\042\000\000\000\042\000\
\000\000\000\000\022\000\022\000\000\000\000\000\022\000\000\000\
\000\000\000\000\000\000\022\000\000\000\022\000\000\000\033\000\
\033\000\000\000\000\000\033\000\000\000\034\000\034\000\000\000\
\033\000\034\000\033\000\000\000\000\000\029\000\029\000\000\000\
\034\000\029\000\000\000\000\000\000\000\000\000\000\000\000\000\
\029\000\000\000\028\000\028\000\000\000\000\000\028\000\032\000\
\032\000\000\000\000\000\032\000\000\000\028\000\000\000\000\000\
\000\000\000\000\032\000\029\000\030\000\031\000\032\000\033\000\
\034\000\035\000\036\000\037\000\038\000\039\000\040\000\041\000\
\042\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\043\000\000\000\000\000\044\000\029\000\030\000\031\000\032\000\
\033\000\034\000\035\000\036\000\037\000\038\000\039\000\040\000\
\041\000\042\000\000\000\000\000\086\000\000\000\000\000\000\000\
\000\000\043\000\000\000\000\000\044\000\029\000\030\000\031\000\
\032\000\033\000\034\000\035\000\036\000\037\000\038\000\039\000\
\040\000\041\000\042\000\000\000\000\000\000\000\000\000\000\000\
\093\000\000\000\043\000\000\000\000\000\044\000\029\000\030\000\
\031\000\032\000\033\000\034\000\035\000\036\000\037\000\038\000\
\039\000\040\000\041\000\042\000\000\000\000\000\000\000\000\000\
\000\000\102\000\000\000\043\000\000\000\000\000\044\000\029\000\
\030\000\031\000\032\000\033\000\034\000\035\000\036\000\037\000\
\038\000\039\000\040\000\041\000\042\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\043\000\000\000\000\000\044\000\
\029\000\030\000\031\000\032\000\033\000\034\000\035\000\036\000\
\037\000\038\000\039\000\040\000\041\000\042\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\043\000\029\000\030\000\
\031\000\032\000\033\000\034\000\035\000\036\000\037\000\038\000\
\039\000\040\000\041\000\042\000"

let yycheck = "\016\000\
\000\000\026\001\000\001\001\001\002\001\003\001\004\001\005\001\
\022\001\007\001\001\000\025\001\007\000\008\000\009\000\010\000\
\030\001\026\001\013\000\022\001\013\001\019\001\031\001\030\001\
\022\001\023\001\009\001\010\001\011\001\012\001\047\000\000\000\
\030\001\031\001\029\000\030\000\031\000\032\000\033\000\034\000\
\035\000\036\000\037\000\038\000\039\000\040\000\041\000\042\000\
\043\000\044\000\001\001\002\001\003\001\048\000\049\000\027\001\
\012\000\024\001\026\001\054\000\030\001\013\001\000\000\013\001\
\028\001\013\001\024\001\023\000\024\000\077\000\255\255\022\001\
\255\255\255\255\255\255\255\255\027\001\072\000\255\255\030\001\
\255\255\255\255\255\255\255\255\079\000\001\001\002\001\003\001\
\255\255\000\000\085\000\086\000\255\255\088\000\050\000\255\255\
\255\255\092\000\093\000\255\255\255\255\255\255\255\255\255\255\
\255\255\100\000\022\001\102\000\000\001\001\001\002\001\003\001\
\004\001\005\001\030\001\007\001\000\000\255\255\255\255\255\255\
\255\255\077\000\255\255\255\255\080\000\081\000\255\255\019\001\
\255\255\255\255\022\001\023\001\255\255\255\255\255\255\255\255\
\255\255\255\255\030\001\255\255\255\255\255\255\255\255\000\000\
\005\001\006\001\007\001\008\001\009\001\010\001\011\001\012\001\
\013\001\014\001\015\001\016\001\017\001\018\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\026\001\255\255\000\000\
\029\001\255\255\031\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\016\001\017\001\
\018\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\026\001\255\255\000\000\029\001\255\255\031\001\005\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\014\001\
\015\001\016\001\017\001\018\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\026\001\255\255\000\000\029\001\255\255\
\031\001\005\001\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\014\001\015\001\016\001\017\001\018\001\255\255\
\020\001\255\255\255\255\255\255\255\255\255\255\026\001\255\255\
\000\000\029\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\001\001\002\001\003\001\255\255\005\001\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\000\000\020\001\021\001\022\001\255\255\
\024\001\255\255\026\001\027\001\255\255\029\001\030\001\031\001\
\001\001\002\001\003\001\255\255\005\001\006\001\007\001\008\001\
\009\001\010\001\011\001\012\001\013\001\014\001\015\001\016\001\
\017\001\018\001\000\000\020\001\021\001\022\001\255\255\024\001\
\255\255\026\001\255\255\255\255\029\001\030\001\031\001\001\001\
\002\001\003\001\255\255\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\016\001\017\001\
\018\001\000\000\020\001\021\001\022\001\255\255\024\001\255\255\
\026\001\255\255\255\255\029\001\030\001\031\001\005\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\014\001\
\015\001\016\001\017\001\018\001\000\000\020\001\021\001\255\255\
\255\255\024\001\255\255\026\001\255\255\255\255\029\001\255\255\
\031\001\005\001\006\001\007\001\008\001\009\001\010\001\011\001\
\012\001\013\001\014\001\015\001\016\001\017\001\018\001\000\000\
\020\001\021\001\255\255\255\255\024\001\255\255\026\001\255\255\
\255\255\029\001\255\255\031\001\005\001\006\001\007\001\008\001\
\009\001\010\001\011\001\012\001\013\001\014\001\015\001\016\001\
\017\001\018\001\000\000\020\001\021\001\255\255\255\255\024\001\
\255\255\255\255\255\255\255\255\029\001\006\001\031\001\008\001\
\009\001\010\001\011\001\012\001\013\001\014\001\015\001\016\001\
\017\001\018\001\000\000\020\001\021\001\255\255\255\255\024\001\
\255\255\026\001\255\255\255\255\029\001\255\255\031\001\005\001\
\006\001\007\001\008\001\000\000\255\255\255\255\255\255\013\001\
\014\001\015\001\016\001\017\001\018\001\255\255\020\001\021\001\
\000\000\255\255\024\001\255\255\026\001\255\255\255\255\029\001\
\255\255\031\001\005\001\006\001\007\001\008\001\000\000\255\255\
\255\255\255\255\013\001\014\001\015\001\016\001\017\001\018\001\
\255\255\020\001\021\001\000\000\255\255\024\001\255\255\026\001\
\255\255\000\000\029\001\255\255\031\001\005\001\006\001\007\001\
\008\001\000\000\255\255\255\255\255\255\013\001\014\001\015\001\
\016\001\017\001\018\001\255\255\020\001\021\001\000\000\255\255\
\024\001\255\255\026\001\000\000\255\255\029\001\255\255\031\001\
\005\001\006\001\007\001\008\001\255\255\255\255\255\255\255\255\
\013\001\014\001\015\001\016\001\017\001\018\001\255\255\020\001\
\021\001\255\255\255\255\024\001\255\255\026\001\000\000\255\255\
\029\001\255\255\031\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\255\255\255\255\255\255\255\255\013\001\
\014\001\015\001\016\001\017\001\018\001\255\255\020\001\021\001\
\255\255\255\255\024\001\255\255\026\001\255\255\255\255\029\001\
\255\255\031\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\013\001\014\001\
\015\001\016\001\017\001\018\001\255\255\020\001\021\001\255\255\
\255\255\024\001\255\255\026\001\255\255\255\255\029\001\255\255\
\031\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\013\001\014\001\015\001\016\001\017\001\018\001\255\255\
\020\001\021\001\255\255\255\255\024\001\255\255\026\001\255\255\
\255\255\029\001\255\255\031\001\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\013\001\014\001\015\001\016\001\
\017\001\018\001\255\255\020\001\021\001\255\255\255\255\024\001\
\255\255\026\001\255\255\255\255\029\001\255\255\031\001\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\013\001\
\014\001\015\001\016\001\017\001\018\001\255\255\020\001\021\001\
\255\255\255\255\024\001\255\255\026\001\255\255\255\255\029\001\
\255\255\031\001\255\255\255\255\255\255\255\255\255\255\013\001\
\014\001\015\001\016\001\017\001\018\001\255\255\020\001\021\001\
\255\255\255\255\024\001\255\255\026\001\255\255\255\255\029\001\
\255\255\031\001\255\255\255\255\255\255\255\255\255\255\020\001\
\021\001\255\255\255\255\024\001\255\255\026\001\255\255\255\255\
\029\001\255\255\031\001\255\255\020\001\021\001\255\255\255\255\
\024\001\255\255\026\001\255\255\255\255\029\001\255\255\031\001\
\255\255\255\255\020\001\021\001\255\255\255\255\024\001\255\255\
\255\255\255\255\255\255\029\001\255\255\031\001\255\255\020\001\
\021\001\255\255\255\255\024\001\255\255\020\001\021\001\255\255\
\029\001\024\001\031\001\255\255\255\255\020\001\021\001\255\255\
\031\001\024\001\255\255\255\255\255\255\255\255\255\255\255\255\
\031\001\255\255\020\001\021\001\255\255\255\255\024\001\020\001\
\021\001\255\255\255\255\024\001\255\255\031\001\255\255\255\255\
\255\255\255\255\031\001\005\001\006\001\007\001\008\001\009\001\
\010\001\011\001\012\001\013\001\014\001\015\001\016\001\017\001\
\018\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\026\001\255\255\255\255\029\001\005\001\006\001\007\001\008\001\
\009\001\010\001\011\001\012\001\013\001\014\001\015\001\016\001\
\017\001\018\001\255\255\255\255\021\001\255\255\255\255\255\255\
\255\255\026\001\255\255\255\255\029\001\005\001\006\001\007\001\
\008\001\009\001\010\001\011\001\012\001\013\001\014\001\015\001\
\016\001\017\001\018\001\255\255\255\255\255\255\255\255\255\255\
\024\001\255\255\026\001\255\255\255\255\029\001\005\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\014\001\
\015\001\016\001\017\001\018\001\255\255\255\255\255\255\255\255\
\255\255\024\001\255\255\026\001\255\255\255\255\029\001\005\001\
\006\001\007\001\008\001\009\001\010\001\011\001\012\001\013\001\
\014\001\015\001\016\001\017\001\018\001\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\026\001\255\255\255\255\029\001\
\005\001\006\001\007\001\008\001\009\001\010\001\011\001\012\001\
\013\001\014\001\015\001\016\001\017\001\018\001\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\026\001\005\001\006\001\
\007\001\008\001\009\001\010\001\011\001\012\001\013\001\014\001\
\015\001\016\001\017\001\018\001"

let yynames_const = "\
  NOT\000\
  EOF\000\
  MINUS\000\
  PLUS\000\
  MINUS_DOT\000\
  PLUS_DOT\000\
  AST_DOT\000\
  AST\000\
  SLASH_DOT\000\
  SLASH\000\
  EQUAL\000\
  LESS_GREATER\000\
  LESS_EQUAL\000\
  GREATER_EQUAL\000\
  LESS\000\
  GREATER\000\
  IF\000\
  THEN\000\
  ELSE\000\
  LET\000\
  IN\000\
  REC\000\
  COMMA\000\
  DOT\000\
  LESS_MINUS\000\
  SEMICOLON\000\
  LPAREN\000\
  RPAREN\000\
  "

let yynames_block = "\
  BOOL\000\
  INT\000\
  FLOAT\000\
  IDENT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 80 "src/parser.mly"
              ( _1 )
# 466 "src/parser.ml"
               : Syntax.t))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 85 "src/parser.mly"
    ( _2 )
# 473 "src/parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    Obj.repr(
# 87 "src/parser.mly"
    ( Const (CUnit ,getdebug()))
# 479 "src/parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 89 "src/parser.mly"
    ( Const (CBool(_1),getdebug()))
# 486 "src/parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 91 "src/parser.mly"
    ( Const (CInt(_1),getdebug()) )
# 493 "src/parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : float) in
    Obj.repr(
# 93 "src/parser.mly"
    ( Const (CFloat(_1),getdebug()) )
# 500 "src/parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'id) in
    Obj.repr(
# 95 "src/parser.mly"
    ( Var(_1 ,getdebug()))
# 507 "src/parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'simple_exp) in
    let _4 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 97 "src/parser.mly"
    ( Op(ArrayGet(TyVar(Type.genvar())),[_1;_4],getdebug() ))
# 515 "src/parser.ml"
               : 'simple_exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_exp) in
    Obj.repr(
# 100 "src/parser.mly"
    ( _1)
# 522 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 103 "src/parser.mly"
    ( Op(Primitive(Not),[_2],getdebug() ))
# 529 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 106 "src/parser.mly"
    ( match _2 with
    | Const(CFloat(f),_) -> Const(CFloat(-.f),getdebug())
    | e -> Op(Primitive(Neg),[e],getdebug()))
# 538 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 110 "src/parser.mly"
    ( Op(Primitive(Mul), [_1; _3],getdebug()))
# 546 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 112 "src/parser.mly"
    ( Op(Primitive(Div), [_1; _3],getdebug()))
# 554 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 114 "src/parser.mly"
    ( Op(Primitive(Add), [_1; _3],getdebug()))
# 562 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 116 "src/parser.mly"
    ( Op(Primitive(Sub), [_1; _3],getdebug()))
# 570 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 118 "src/parser.mly"
    ( Op(Primitive(EQ), [_1; _3],getdebug()) )
# 578 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 120 "src/parser.mly"
    ( Op(Primitive(LE),[_1; _3],getdebug()))
# 586 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 122 "src/parser.mly"
    ( Op(Primitive(GE),[_1; _3],getdebug()))
# 594 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 124 "src/parser.mly"
    ( Op(Primitive(Not),[(Op(Primitive(EQ),[_1; _3] ,getdebug()))],getdebug()) )
# 602 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 126 "src/parser.mly"
    ( Op(Primitive(Not),[(Op(Primitive(GE),[_1; _3] ,getdebug()))],getdebug()))
# 610 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 128 "src/parser.mly"
    ( Op(Primitive(Not),[(Op(Primitive(LE),[_1; _3] ,getdebug()))], getdebug()))
# 618 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'exp) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 133 "src/parser.mly"
    ( If(_2, _4, _6,getdebug()))
# 627 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 136 "src/parser.mly"
    ( Op(Primitive(FNeg), [_2],getdebug()))
# 634 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 138 "src/parser.mly"
    ( Op(Primitive(FAdd), [_1; _3],getdebug()))
# 642 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 140 "src/parser.mly"
    ( Op(Primitive(FSub), [_1; _3],getdebug()))
# 650 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 143 "src/parser.mly"
    ( Op(Primitive(FMul), [_1; _3],getdebug()))
# 658 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 145 "src/parser.mly"
    ( Op(Primitive(FDiv), [_1; _3],getdebug()))
# 666 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'id) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 149 "src/parser.mly"
    ( Let(_2, _4, _6,getdebug()))
# 675 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'fundef) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 152 "src/parser.mly"
    ( 
        LetRec(_3, _5,getdebug()) )
# 684 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'simple_exp) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'actual_args) in
    Obj.repr(
# 156 "src/parser.mly"
    ( App(_1, _2, getdebug()))
# 692 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'elems) in
    Obj.repr(
# 159 "src/parser.mly"
    ( Tuple(_1,getdebug()))
# 699 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 5 : 'pat) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _8 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 161 "src/parser.mly"
    ( 

       
        let p =  alpha() in
        let init = List.length _3 - 1 in
        let all = List.length _3 in
        let d = getdebug() in
        let e' = List.fold_right (fun x (counter,acc) ->
            (counter - 1, Let(x,  Op(Projection (counter,all, Type.TyVar(Type.genvar())), [Var(p,d)], d), acc,d))
         ) 
         _3 (init, _8)
         in
        Let(p,_6, snd e', d) 
    )
# 721 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 6 : 'simple_exp) in
    let _4 = (Parsing.peek_val __caml_parser_env 3 : 'exp) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 176 "src/parser.mly"
    ( Op(ArrayPut (Type.TyVar(Type.genvar())),[_1; _4; _7],getdebug()))
# 730 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 179 "src/parser.mly"
    ( 
        Let(alpha(), _1, _3 ,getdebug()))
# 739 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'exp) in
    Obj.repr(
# 181 "src/parser.mly"
                (_1)
# 746 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    Obj.repr(
# 183 "src/parser.mly"
    (
    let lex = (Parsing.symbol_end_pos ()).Lexing.pos_lnum in
         failwith ("syntax error near line " ^ (string_of_int lex))
    )
# 755 "src/parser.ml"
               : 'exp))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'id) in
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'formal_args) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 190 "src/parser.mly"
    ( { f = _1; args = _2 ; body =  _4; info = getdebug() } )
# 764 "src/parser.ml"
               : 'fundef))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'id) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'formal_args) in
    Obj.repr(
# 194 "src/parser.mly"
    ( _1 :: _2 )
# 772 "src/parser.ml"
               : 'formal_args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'id) in
    Obj.repr(
# 196 "src/parser.mly"
    ( [_1] )
# 779 "src/parser.ml"
               : 'formal_args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'actual_args) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'simple_exp) in
    Obj.repr(
# 201 "src/parser.mly"
    ( _1 @ [_2] )
# 787 "src/parser.ml"
               : 'actual_args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_exp) in
    Obj.repr(
# 204 "src/parser.mly"
    ( [_1] )
# 794 "src/parser.ml"
               : 'actual_args))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'elems) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 208 "src/parser.mly"
    ( _1 @ [_3] )
# 802 "src/parser.ml"
               : 'elems))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'exp) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'exp) in
    Obj.repr(
# 210 "src/parser.mly"
    ( [_1; _3] )
# 810 "src/parser.ml"
               : 'elems))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 213 "src/parser.mly"
    (
        {
        name = _1;
        debug = getdebug();
        ty = Type.TyVar(Type.genvar());
        }
    )
# 823 "src/parser.ml"
               : 'id))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'pat) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'id) in
    Obj.repr(
# 222 "src/parser.mly"
    ( _1 @ [_3] )
# 831 "src/parser.ml"
               : 'pat))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'id) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'id) in
    Obj.repr(
# 224 "src/parser.mly"
    ( [_1; _3] )
# 839 "src/parser.ml"
               : 'pat))
(* Entry top_exp *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let top_exp (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Syntax.t)
