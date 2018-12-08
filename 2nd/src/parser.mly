%{
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
%}


%token <bool> BOOL
%token <int> INT
%token <float> FLOAT
%token NOT
%token FUN
%token EOF
%token RIGHT_ARROW
%token MINUS
%token PLUS
%token PLUS_ADHOC
%token MINUS_DOT
%token PLUS_DOT
%token AST_DOT
%token AST
%token SLASH_DOT
%token SLASH
%token EQUAL
%token LESS_GREATER
%token LESS_EQUAL
%token GREATER_EQUAL
%token LESS
%token GREATER
%token IF
%token THEN
%token ELSE
%token <string> IDENT
%token LET
%token IN
%token REC
%token COMMA
%token DOT
%token LESS_MINUS
%token SEMICOLON
%token LPAREN
%token RPAREN
%nonassoc IN
%right prec_let
%right SEMICOLON
%right prec_if
%right LESS_MINUS
%nonassoc prec_tuple
%left COMMA
%left EQUAL LESS_GREATER LESS GREATER LESS_EQUAL GREATER_EQUAL
%left PLUS MINUS PLUS_DOT MINUS_DOT PLUS_ADHOC
%left AST SLASH AST_DOT SLASH_DOT
%right prec_unary_minus
%left prec_app
%left DOT

%type <Syntax.t> top_exp
%start top_exp
%%


top_exp: 
    | exp EOF { $1 }


simple_exp: 
| LPAREN exp RPAREN
    { $2 }
| LPAREN RPAREN
    { Const (CUnit ,getdebug())}
| BOOL
    { Const (CBool($1),getdebug())}
| INT
    { Const (CInt($1),getdebug()) }
| FLOAT
    { Const (CFloat($1),getdebug()) }
| id 
    { Var($1 ,getdebug())}
| simple_exp DOT LPAREN exp RPAREN
    { Op(ArrayGet(TyVar(Type.genvar())),[$1;$4],getdebug() )}
exp: 
| simple_exp
    { $1}
| NOT exp
    %prec prec_app
    { Op(Primitive(Not),[$2],getdebug() )}
| MINUS exp
    %prec prec_unary_minus
    { match $2 with
    | Const(CFloat(f),_) -> Const(CFloat(-.f),getdebug())
    | e -> Op(Primitive(Neg),[e],getdebug())}
| exp AST exp
    { Op(Primitive(Mul), [$1; $3],getdebug())}
| exp SLASH exp
    { Op(Primitive(Div), [$1; $3],getdebug())}
| exp PLUS exp 
    { Op(Primitive(Add), [$1; $3],getdebug())}
| exp PLUS_ADHOC exp 
    { Op(Adhoc(AAdd), [$1; $3],getdebug())}
| exp MINUS exp
    { Op(Primitive(Sub), [$1; $3],getdebug())}
| exp EQUAL exp
    { Op(Primitive(EQ), [$1; $3],getdebug()) }
| exp LESS_EQUAL exp
    { Op(Primitive(LE),[$1; $3],getdebug())}
| exp GREATER_EQUAL exp
    { Op(Primitive(GE),[$1; $3],getdebug())}
| exp LESS_GREATER exp
    { Op(Primitive(Not),[(Op(Primitive(EQ),[$1; $3] ,getdebug()))],getdebug()) }
| exp LESS exp
    { Op(Primitive(LT),[$1; $3] ,getdebug())}
| exp GREATER exp
    { Op(Primitive(GT),[$1; $3] ,getdebug())}


| IF exp THEN exp ELSE exp
    %prec prec_if
    { If($2, $4, $6,getdebug())}
| MINUS_DOT exp
    %prec prec_unary_minus
    { Op(Primitive(FNeg), [$2],getdebug())}
| exp PLUS_DOT exp
    { Op(Primitive(FAdd), [$1; $3],getdebug())}
| exp MINUS_DOT exp
    { Op(Primitive(FSub), [$1; $3],getdebug())}

| exp AST_DOT exp
    { Op(Primitive(FMul), [$1; $3],getdebug())}
| exp SLASH_DOT exp
    { Op(Primitive(FDiv), [$1; $3],getdebug())}
| LET id EQUAL exp IN exp
    %prec prec_let
    { Let($2, $4, $6,getdebug())}
| anonymousf {$1}
| LET REC fundef IN exp
    %prec prec_let
    { 
        LetRec($3, $5,getdebug()) }
| simple_exp actual_args
    %prec prec_app
    { App($1, $2, getdebug())}
| elems
    %prec prec_tuple
    { Tuple($1,getdebug())}
| LET LPAREN pat RPAREN EQUAL exp IN exp
    { 

       
        let p =  alpha() in
        let init = List.length $3 - 1 in
        let all = List.length $3 in
        let d = getdebug() in
        let e' = List.fold_right (fun x (counter,acc) ->
            (counter - 1, Let(x,  Op(Projection (counter,all, Type.TyVar(Type.genvar())), [Var(p,d)], d), acc,d))
         ) 
         $3 (init, $8)
         in
        Let(p,$6, snd e', d) 
    }
| simple_exp DOT LPAREN exp RPAREN LESS_MINUS exp
    { Op(ArrayPut (Type.TyVar(Type.genvar())),[$1; $4; $7],getdebug())}
| exp SEMICOLON exp

    { 
        Let(alpha(), $1, $3 ,getdebug())}
| exp SEMICOLON {$1}
| error
    {
    let lex = (Parsing.symbol_end_pos ()).Lexing.pos_lnum in
         failwith ("syntax error near line " ^ (string_of_int lex))
    }

fundef:
| id formal_args EQUAL exp
    { { f = $1; args = $2 ; body =  $4; info = getdebug() } }

anonymousf:
| FUN formal_args RIGHT_ARROW exp
    { 
        let name = alpha() in 
        LetRec({f = name; args = $2; body = $4; info = getdebug() }, Var(name,getdebug()), getdebug())
    }

formal_args:
| id formal_args
    { $1 :: $2 }
| id 
    { [$1] }

actual_args:
| actual_args simple_exp
    %prec prec_app
    { $1 @ [$2] }
| simple_exp
    %prec prec_app
    { [$1] }

elems:
| elems COMMA exp
    { $1 @ [$3] }
| exp COMMA exp
    { [$1; $3] }
id:
    IDENT 
    {
        {
        name = $1;
        debug = getdebug();
        ty = Type.TyVar(Type.genvar());
        }
    }
pat:
| pat COMMA id 
    { $1 @ [$3] }
| id COMMA id 
    {[$1; $3] }
