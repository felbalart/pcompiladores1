package coolc.ast;



public class ValueExpr<T> extends Expr {

    private T _value;
    public T getValue() {
        return _value;
    }

    public ValueExpr(T value) {
    	
    	if(value instanceof String) {
    		String valuev = (String) value;
    		String v = valuev.replace("\n","\\0A");
    		String fantasy_name = sanitify(valuev);
    		int len = valuev.length()+1;
    		
    		String new_dec = "@.String."+fantasy_name+" = constant ["+len+" x i8] c\""+v+"\\00\"\n";
    		
    		if(!ValueExpr.string_constants.contains(new_dec))
    			ValueExpr.string_constants += new_dec;
    	}

    	
        _value = value;
    }
    
    
    public static String string_constants = "";
    public static String sanitify(String st)
    {   st = st.replace("\n", "SLASHENE").replace(" ","SPACE");
    	String ret = "";
    	for(int i =0;i<st.length();i++)
    	{	char a = st.charAt(i);
    	
    	if((a>='a' && a<='z') || (a>='A' && a<='Z') || (a>='0' && a<='9'))
    		ret+=""+a;
    	else ret+=(int)a;
    	
    	
    	}	
    		return ret;
    	
    }
}
