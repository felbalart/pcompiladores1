package coolc.ast;

public class ValueExpr<T> extends Expr {

    private T _value;
    public T getValue() {
        return _value;
    }

    public ValueExpr(T value) {
        _value = value;
        
        
        if (value instanceof String) {  
            this.type = "String";  
        }
        
        else if (value instanceof Integer) {  
            this.type = "Int";  
        }
        else if (value instanceof Boolean) {  
            this.type = "Bool";  
        }  
        
        
    }
}
