package coolc.ast;
import java.util.*;
import static java.lang.System.out;

public class AstNode {

    public List<AstNode> children = new ArrayList<AstNode>();
    public List<AstNode> siblings = new ArrayList<AstNode>(); ;
    public String tag;

    public AstNode(String tag) {        
    	this.tag = tag;
        siblings.add(this);
    }    

    public AstNode(String tag,  AstNode... params) {
        this(tag);
        siblings.add(this);
        for(AstNode o: params) {
            addChild(o);
        }
    }
    
    public void addChild(AstNode child){
    	if(child != null)
    	{
    	this.children.addAll(child.siblings);
    	p(tag+" es papa de "+child.tag+", y sus "+child.siblings.size()+" hermanos");
    	}    
    	else p("MSJ:no se agrego hijo a:"+tag+" por ser null");
    }
    
    public void addSibling(AstNode sibling){
    	
    	if(sibling!= null)
    	{

    	for(int i =0; i<sibling.siblings.size();i++)
    	{
    		AstNode new_bro = sibling.siblings.get(i);    	
    	
    	if(!siblings.contains(new_bro))
    	{this.siblings.add(new_bro);
    	p("se agrego "+new_bro.tag+" hermano de "+tag);
    	}
    	}
    	
    	}
    	else
    	p("MSJ:No se le agrego hermano a "+tag+" por nulidad");


    }
    

	public static void p(String x){//System.out.println(x);
	}
}
