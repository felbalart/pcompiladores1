package coolc.ast;
import java.util.*;

public class Scope {
	
	
	public List<Variable> vars = new ArrayList<Variable>(); 
	
	public Scope()
	{}
	

	public String getVarType(String id)
	{
        for(Variable v: vars) {            
        	if(v.getId().equals(id)) return v.getType();        	
        } 
        
        return "";
        //throw new RuntimeException("ERROR: ID '"+id+"' not found in scope");
	}
	
	
	
	
	
	public void addVar(Variable var){
		
		
for(Variable v: vars) {           
        	if(v.getId()==var.getId())         throw new RuntimeException("ERROR: ID '"+var.getId()+"' duplicated");        	
        }
		
		vars.add(var);
		
		
		
	}
	
	public String description(){
		String ret = "";
		ret+="Vlgth:"+vars.size()+"/";
		
for(Variable v: vars) {           
        	ret+="/"+v.getId()+":"+v.getType();        	
        }
	return ret+"//";
	}
	
}