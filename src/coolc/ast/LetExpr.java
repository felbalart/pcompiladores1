package coolc.ast;

public class LetExpr extends ValueExpr<Expr> {

    private DeclList _decl;
    public  DeclList getDecl() {
        return _decl;
    }

    public LetExpr(DeclList decl, Expr value) {
        super(value);
        _decl = decl;
        type = value.type;
        
        //System.out.println("SE_CREO_LETEXPR_CON_VALUE_TIPO"+value.getClass().getName());
    }
}
