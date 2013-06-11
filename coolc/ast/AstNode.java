package coolc.ast;
import java.util.*;
import static java.lang.System.out;

public class AstNode {

    public List<AstNode> children;
    public String tag;
    public AstNode padre;
    public List<AstNode> brother;
    public String id;

    public AstNode(String tag) {
        this.tag = tag;
        this.id="Nada";
        children = new ArrayList<AstNode>();
        brother = new ArrayList<AstNode>();
    }    

    public AstNode(String tag,  AstNode... params) {
        this(tag);
        this.id="Nada";
        for(AstNode o: params) {
            children.add(o);
            for(AstNode h: o.brother){
				children.add(h);
			}
				
        }
    }
    
    public void AddHermano(AstNode hermano){
		
		if(hermano!=null){
		
		brother.add(hermano);
		if(hermano.brother!=null){
			
		for(AstNode x: hermano.brother){	
				
				brother.add(x);
		
		}
		
		
		}
		}
		else{System.out.println("lista nula"); } 
	}
	
	public void AddChild(AstNode hijo){
		
		if(hijo!=null){
		
		children.add(hijo);
		
		if(hijo.brother!=null){
			for(AstNode i: hijo.brother){
				children.add(i);
			}
		}
		else{System.out.println("lista nula"); } 
		}
		
	}
    
    
}
