package coolc;

import coolc.ast.*;

import java.util.Hashtable;

public class LLVMAstPrinter {

	private Program _root;
	private boolean _printTypes;
	private String output = "";
	private int vc = 0;
	Hashtable<String, String> var_mem = new Hashtable<String, String>();
	Hashtable<String, String> var_type = new Hashtable<String, String>();
	Hashtable<String, String> std_method_ret_type = new Hashtable<String, String>();
	Hashtable<String, String> std_method_class = new Hashtable<String, String>();
	String pending_field_dec = "";
	Boolean fields_dec = false;

	private String vc() {
		int aux = vc;
		vc++;
		return "v" + aux;
	}

	public LLVMAstPrinter(Program root) {
		this(root, false);
	}

	public LLVMAstPrinter(Program root, boolean printTypes) {
		_root = root;
		_printTypes = printTypes;
	}

	public void print() {
		// System.out.println("program");

		pl("%Object = type { i8* }");
		pl("%IO = type { i8* }");
		pl("%Main = type { i8* }");

		String std_method_dec = "declare %Object* @Object_abort(%Object*)\n"
				+ "declare i8* @Object_type_name(%Object*)\n"
				+ "declare %IO* @IO_out_string(%IO*, i8*)\n"
				+ "declare %IO* @IO_out_int(%IO*, i32 )\n"
				+ "declare i8* @IO_in_string(%IO*)\n"
				+ "declare i32 @IO_in_int(%IO*)\n"
				+ "declare i32 @String_length(i8*)\n"
				+ "declare i8* @String_concat(i8*, i8*)\n"
				+ "declare i8* @String_substr(i8*, i32, i32 )\n";

		std_method_ret_type.put("abort", "%Object");
		std_method_ret_type.put("type_name", "i8*");
		std_method_ret_type.put("out_string", "%IO*");
		std_method_ret_type.put("out_int", "%IO*");
		std_method_ret_type.put("in_string", "i8*");
		std_method_ret_type.put("in_int", "i32");
		std_method_ret_type.put("length", "i32");
		std_method_ret_type.put("concat", "i8*");
		std_method_ret_type.put("substr", "i8*");

		std_method_class.put("abort", "Object");
		std_method_class.put("type_name", "Object");
		std_method_class.put("out_string", "IO");
		std_method_class.put("out_int", "IO");
		std_method_class.put("in_string", "IO");
		std_method_class.put("in_int", "IO");
		std_method_class.put("length", "String");
		std_method_class.put("concat", "String");
		std_method_class.put("substr", "String");

		ps(std_method_dec);
		ps(ValueExpr.string_constants);

		for (ClassDef c : _root) {
			print(c);
		}
	}

	private void print(ClassDef c) {
		printIndent(1);
		// System.out.printf("class %s", c.getType());
		if (c.getSuper() != null) {
			// System.out.printf(" : %s", c.getSuper());
		}
		// System.out.println();

		for (Feature f : c.getBody()) {

			print(f);
		}

	}

	private void print(Feature f) {
		if (f instanceof Method) {
			Method m = (Method) f;
			printIndent(2);
			// System.out.printf("method %s : ", m.getName());
			pl(";xxMethod def!");
			String m_r_type = llvm_type(m.getType());
			if (m.getName().equals("main"))
				m_r_type = "i32";

			String linea_mdef = "define " + m_r_type + " @" + m.getName() + "(";
			String lineas_param_alloc = "";
			for (Variable var : m.getParams()) {
				// System.out.printf("%s %s -> ", var.getType(), var.getId());
				linea_mdef += llvm_type(var.getType()) + " %" + var.getId();
				String mv = vc();
				lineas_param_alloc += "%" + mv + " = alloca "
						+ llvm_type(var.getType()) + "\n";// palloc(mv,
															// llvm_type(var.getType());
				var_mem.put(var.getId(), mv);
				var_type.put(var.getId(), llvm_type(var.getType()));
				if (var.getValue() != null) {
					throw new RuntimeException(
							"WTF? initializing parameter definition?");
				}
			}

			linea_mdef += ") {";
			pl(linea_mdef);
			ps(lineas_param_alloc);

			ps(pending_field_dec);

			// System.out.println(m.getType());

			if (!m.getName().equals("main")) {
				String m_ret_pointer = print(m.getBody(), 3);
				String m_ret_val = vc();
				pload(m_ret_val, m_ret_pointer, m_r_type);
				pl("ret " + m_r_type + " %" + m_ret_val);
				pl("}");
			} else {

				print(m.getBody(), 3);
				pl("ret i32 0");
				pl("}");

			}

		} else if (f instanceof Variable) {
			Variable var = (Variable) f;
			printIndent(2);
			pl(";xxVariable (field)");
			// System.out.printf("field %s %s\n", var.getType(), var.getId());

			fields_dec = true;
			pl(";xxFIELDS ON");

			String m;

			if (var.getValue() != null) {
				m = print(var.getValue(), 3);
			} else {
				m = vc();
				palloc(m, llvm_type(var.getType()));
				//pl("%" + m + " = null");
			}

			// String m = vc();
			// palloc(m, llvm_type(var.getType()));
			// pending_field_dec += "%" + m + " = alloca "+
			// llvm_type(var.getType()) + "\n";

			var_mem.put(var.getId(), m);
			var_type.put(var.getId(), llvm_type(var.getType()));

			pl(";xxFIELDS OFF");
			fields_dec = false;

		} else {
			throw new RuntimeException("Unknown feature type " + f.getClass());
		}
	}

	public static void printIndent(int indent) {
		/*
		 * for (int i = indent; i > 0 ; i-- ) { System.out.print("    "); }
		 */
	}

	public static void printIndent(int indent, StringBuilder sb) {
		/*
		 * for (int i = indent; i > 0 ; i-- ) { sb.append("    "); }
		 */
	}

	private void printTag(String tag, Expr e) {
		System.out.print(tag);
		if (_printTypes) {
			String type = e.getExprType();
			if (type != null) {
				System.out.printf(" [%s]", type);
			} else {
				System.out.print(" ERROR");
			}
		}
		System.out.println();
	}

	private void ps(String a_string) {
		if (!fields_dec)
			System.out.print(a_string);
		else
			pending_field_dec += a_string;
	}

	private void pl(String a_line) {
		ps(a_line + "\n");
	}

	private void palloc(Object m, String type) {
		if (type != null && !type.equals("null")) {
			pl("%" + m + " = alloca " + type);
			var_type.put(m.toString(), type + "*");
		}
	}

	private void pstore(Object var, Object pointer, String type) {
		if (type != null && !type.equals("null")) {
			pl("store " + type + " %" + var.toString() + ", " + type + "* %"
					+ pointer.toString());
		}
	}

	private void pload(Object dest, Object pointer, String type) {
		if (type != null && !type.equals("null")) {
			pl("%" + dest.toString() + " = load " + type + "* %"
					+ pointer.toString());
			var_type.put(dest.toString(), type);
		}
	}

	@SuppressWarnings("unchecked")
	private String print(Expr e, int indent) {
		String ret = "NDE";
		assert e != null : "node is null";

		printIndent(indent);

		if (e instanceof Block) {
			pl(";xxBloq");
			// printTag("block", e);

			// ps("{\n");
			
			String m_last ="";

			for (Expr child : ((Block) e).getStatements()) {
				m_last = print(child, indent + 1);
			}
			
			if(!m_last.equals(""))
			return m_last;
			else pl(";xx Bloque sin expr validas");
			
			// ps("\n}");
		} else if (e instanceof WhileExpr) {
			WhileExpr loop = (WhileExpr) e;

			assert "Object".equals(loop.getExprType()) : "while type must be Object";

			printTag("while", e);

			print(loop.getCond(), indent + 1);

			printIndent(indent);
			System.out.println("loop");

			print(loop.getValue(), indent + 1);

		} else if (e instanceof AssignExpr) {

			AssignExpr ae = (AssignExpr) e;
			String mem = var_mem.get(ae.getId());
			String type = var_type.get(ae.getId());

			// printTag(String.format("assign %s", ((AssignExpr)e).getId()), e);

			String val_mem = print(((AssignExpr) e).getValue(), indent + 1);
			// ps("LA WEA D ESTE VAL MEM VALE "+val_mem+"\n");

			String val = vc();

			pload(val, val_mem, type);

			pstore(val, mem, type);

		}

		else if (e instanceof DispatchExpr) {
			DispatchExpr call = (DispatchExpr) e;

			StringBuilder out = new StringBuilder();

			pl(";xxDispatch de:" + call.getName());

			/*
			 * out.append("call ").append(call.getName()); if(call.getType() !=
			 * null) { out.append(" as ").append(call.getType()); }
			 * printTag(out.toString(), e);
			 */

			String args_data = "";

			if (call.getExpr() != null) {
				/*
				 * printIndent(indent+1); System.out.println("callee");
				 */

				String calee_type = std_method_ret_type.get(call
						.getName());

				pl(";xxCalee type vale--"+calee_type);
				String m_calee = print(call.getExpr(), indent + 2);
				String mload = vc();
				pl(";xxDispatch Callee def load...");
				pload(mload, m_calee, calee_type);				
				args_data += calee_type + " %" + mload + ",";
			}

			if (call.getArgs().size() > 0) {
				/*
				 * printIndent(indent+1); System.out.println("args");
				 */
				for (Expr arg : call.getArgs()) {

					String marg = print(arg, indent + 2);
					String marg_load = vc();
					pl(";Dispatch arg load...");
					pload(marg_load, marg, llvm_type(arg.getExprType()));					
					args_data += llvm_type(arg.getExprType()) + " %"
							+ marg_load + ",";

				}
			}

			if (args_data.length() > 0)
				args_data = args_data.substring(0, args_data.length() - 1);

			String m = vc();
			String m_class = "";
			String type = "i8*";

			if (call.getType() != null)
				type = llvm_type(call.getType());
			
			if (std_method_class.containsKey(call.getName())) {
				m_class = std_method_class.get(call.getName());
				type = std_method_ret_type.get(call.getName());

				
				if(m_class.equals("IO"))
				{  //String m_std = vc();
				   //palloc(m_std,type);
					
				
				
				  String null_arg =  "%IO* null";// %"+m_std; if
				  if(args_data.length() > 0) null_arg += ",";
				  
				  args_data = null_arg + " " + args_data;
				}

			}

			var_type.put(m, type);

			pl("%" + m + " = call " + type + " @"
					+ std_method_class.get(call.getName()) + "_"
					+ call.getName() + "(" + args_data + ")");
			
			String m_pointer = vc();
			palloc(m_pointer, type);
			pstore(m, m_pointer, type);

			return m_pointer;

			
			
			
		} else if (e instanceof IfExpr) {
			IfExpr cond = (IfExpr) e;
			assert "Bool".equals(cond.getCond().getExprType());
			pl(";xxIFEX");
			// printTag("if", e);
			// String m_ret = vc();
			String m_cond_pointer = print(cond.getCond(), indent + 1);
			String m_cond_val = vc();
			pload(m_cond_val, m_cond_pointer, "i1");

			String m_true_branch = vc();
			String m_false_branch = vc();
			String m_after_branch = vc();

			pl("br i1 %" + m_cond_val + ", label %" + m_true_branch
					+ ", label %" + m_false_branch);

			String m_ret_p_if = vc();

			printIndent(indent);
			// System.out.println("then");
			pl(m_true_branch + ":");
			String m_ret_p_ex1 = print(cond.getTrue(), indent + 1);
			// pl(";xxPaloqeare el ret if con un puntero del tipo q me diga el hash");
			// ps("VALOR ");
			// ps(m_ret_p_ex1);
			// pl("");
			String t_e_1 = var_type.get(m_ret_p_ex1);
			// pl(";xxPREVIO:"+t_e_1);
			if (t_e_1 != null && t_e_1.charAt(t_e_1.length() - 1) == '*')
				t_e_1 = t_e_1.substring(0, t_e_1.length() - 1);
			// pl(";xxPOST:"+t_e_1);
			// palloc(m_ret_p_if,t_e_1);
			// String v_temp = vc();
			// pl(";xxLoadeo en una var aux el puntero q me retorno la expr");
			// pload(v_temp,m_ret_p_ex1,t_e_1);
			// pl(";xxStoreo esta var temporan en el puntero q retorna el if");
			// pstore(v_temp,m_ret_p_if,t_e_1);

			pl("br label %" + m_after_branch);

			printIndent(indent);
			// System.out.println("else");
			pl(m_false_branch + ":");
			String m_ret_p_ex2 = print(cond.getFalse(), indent + 1);
			String t_e_2 = var_type.get(m_ret_p_ex2);
			if (t_e_2 != null && t_e_2.charAt(t_e_2.length() - 1) == '*')
				t_e_2 = t_e_2.substring(0, t_e_2.length() - 1);
			// palloc(m_ret_p_if,t_e_2);
			// String v_temp2 = vc();
			// pload(v_temp2,m_ret_p_ex2,t_e_2);
			// pstore(v_temp2,m_ret_p_if,t_e_2);*/

			pl("br label %" + m_after_branch);

			pl(m_after_branch + ":");
			// Alocateo selectivo
			// pl("%"+m_ret_p_if+" = select i1 %"+m_cond_val+", "+t_e_1+" %"+m_ret_p_ex1+", "+t_e_2+" %"+m_ret_p_ex2);
			// ", alloca "+t_e_1+", alloca "+t_e_2;
			// Val var selectiva
			// String m_sel_val = vc();
			// pl("%"+m_sel_val+" select i1 %"
			// +m_cond_val+", load "+t_e_1+" %"+m_ret_p_ex1+", load "+t_e_2+" %"+m_ret_p_ex2);
			// Almacenamos la var selectiva en el puntero de retorno
			// store(m_sel_val,m_ret_p_if,t_e_2);*/

			// pl("%"+m_ret_p_if+" select i1 %"+m_cond_val+", "+t_e_1+" %"+m_ret_p_ex1+", "+t_e_2+" %"+m_ret_p_ex2);
			// pl("%"+m_ret_p_if+" select i1 %"+m_cond_val+", alloca "+t_e_1+", alloca "+t_e_2;

			// FI es la p"#$%"#$* solucion!!!

			pl("%" + m_ret_p_if + " = phi " + t_e_1 + "* [%" + m_ret_p_ex1
					+ ", %" + m_true_branch + "],[%" + m_ret_p_ex2 + ", %"
					+ m_false_branch + "]");

			return m_ret_p_if;

		} else if (e instanceof NewExpr) {
			NewExpr newExpr = (NewExpr) e;
			printTag(String.format("new %s", newExpr.getType()), e);

			assert newExpr.getType().equals(e.getExprType()) : String.format(
					"Incompatible types %s %s", newExpr.getType(),
					e.getExprType());
		} else if (e instanceof UnaryExpr) {
			UnaryExpr expr = (UnaryExpr) e;
			String op_s = operator(expr.getOp());

			if (op_s.equals("not")) {
				String m_ret = vc();
				String m_p = print(expr.getValue(), indent + 1);
				String m_v = vc();
				pload(m_v, m_p, "i1");
				pl("%" + m_ret + " = xor i1 %" + m_v + ", 1");
				String m_pointer = vc();
				palloc(m_pointer, "i1");
				pstore(m_ret, m_pointer, "i1");

				ret = m_pointer;

			} else // NEGATE
			{
				String m_ret = vc();
				String m_p = print(expr.getValue(), indent + 1);
				String m_v = vc();
				pload(m_v, m_p, "i32");
				pl("%" + m_ret + " = xor i32 %" + m_v + ", -1");
				String m_pointer = vc();
				palloc(m_pointer, "i32");
				pstore(m_ret, m_pointer, "i32");

				ret = m_pointer;

			}

			// printTag(String.format("unary %s", operator(expr.getOp())), e);

		} else if (e instanceof BinaryExpr) {
			BinaryExpr expr = (BinaryExpr) e;
			// printTag(String.format("binary %s", operator(expr.getOp())), e);

			String op_s = operator(expr.getOp());

			String a_type = "i32";
			String r_type = "i32";

			if (expr.getLeft().getExprType().equals("Bool"))
				a_type = "i1";

			if (op_s.equals("<") || op_s.equals("<=") || op_s.equals("="))
				r_type = "i1";

			String mL = print(expr.getLeft(), indent + 1);
			String mR = print(expr.getRight(), indent + 1);

			String m = vc();
			// int m2 = vc();
			// palloc(m, r_type);
			// pl("%"+m2+" = alloca i32");

			String m2L = vc();
			String m2R = vc();
			pload(m2L, mL, a_type);
			pload(m2R, mR, a_type);

			if (op_s.equals("+"))
				pl("%" + m + " = add nsw i32 %" + m2L + ", %" + m2R);
			else if (op_s.equals("-"))
				pl("%" + m + " = sub nsw i32 %" + m2L + ", %" + m2R);
			else if (op_s.equals("*"))
				pl("%" + m + " = mul nsw i32 %" + m2L + ", %" + m2R);
			else if (op_s.equals("/"))
				pl("%" + m + " = sdiv i32 %" + m2L + ", %" + m2R);
			else if (op_s.equals("<"))
				pl("%" + m + " = icmp slt i32 %" + m2L + ", %" + m2R);
			else if (op_s.equals("<="))
				pl("%" + m + " = icmp sle i32 %" + m2L + ", %" + m2R);
			else if (op_s.equals("<="))
				pl("%" + m + " = icmp sle i32 %" + m2L + ", %" + m2R);
			else if (op_s.equals("="))
				pl("%" + m + " = icmp eq " + a_type + " %" + m2L + ", %" + m2R);

			String m_pointer = vc();
			palloc(m_pointer, r_type);
			pstore(m, m_pointer, r_type);

			ret = m_pointer;

		} else if (e instanceof CaseExpr) {
			CaseExpr caseExpr = ((CaseExpr) e);

			printTag("instanceof", e);
			print(caseExpr.getValue(), indent + 1);

			for (Case c : caseExpr.getCases()) {
				printIndent(indent + 1);
				System.out.printf("case %s %s\n", c.getType(), c.getId());
				print(c.getValue(), indent + 2);
			}

		} else if (e instanceof LetExpr) {
			LetExpr let = (LetExpr) e;
			printTag("let", e);

			printIndent(indent + 1);
			System.out.println("vars");
			for (Variable var : let.getDecl()) {
				printIndent(indent + 2);
				System.out.printf("%s %s\n", var.getType(), var.getId());
				if (var.getValue() != null) {
					print(var.getValue(), indent + 3);
				}
			}

			print(let.getValue(), indent + 1);
		} else if (e instanceof IdExpr) {
			pl(";xxIdExpr");
			return var_mem.get(((IdExpr) e).getId());
			// printTag(String.format("id %s", ((IdExpr)e).getId()), e);
		} else if (e instanceof ValueExpr) {
			Object value = ((ValueExpr) e).getValue();

			if (value instanceof String) {

				value = ValueExpr.sanitify(((String) value))
						.replace("\t", "\\t").replace("\f", "\\f")
						.replace("\b", "\\b");

				// printTag(String.format("str \"%s\"", value), e);

				String m = vc();

				palloc(m, "i8*");

				int index_from = ValueExpr.string_constants
						.indexOf(((String) value));

				int len_index = 1 + ValueExpr.string_constants.indexOf("[",
						index_from);
				// System.out.println("VEsc="+ValueExpr.string_constants+",Ifrom="+index_from+",lenindex = "+len_index);
				// throw new
				// RuntimeException("LA puta wea vale"+ValueExpr.string_constants);

				String substr = ValueExpr.string_constants.substring(len_index,
						len_index + 2);
				substr = substr.replace(" ", "");
				int len = Integer.parseInt(substr);

				pl("store i8* bitcast ( [" + len + " x i8]* @.String." + value
						+ " to i8* ), i8** %" + m);

				ret = m;

			}

			else if (value instanceof Integer) {
				pl(";xxInt");
				assert "Int".equals(e.getExprType());
				// printTag(String.format("int %d", value), e);
				String m = vc();

				palloc(m, "i32");
				pl(";xxStoreamos un int con el valor: " + value);
				pl("store i32 " + value + ", i32* %" + m);

				ret = m;

			} else if (value instanceof Boolean) {
				pl(";xxBOOL");
				assert "Bool".equals(e.getExprType());
				String m = vc();
				palloc(m, "i1");

				pl("store i1 " + value + ", i1* %" + m);

				ret = m;

				// printTag(String.format("bool %s", value), e);
			} else {
				throw new RuntimeException(String.format(
						"Unsupported constant type %s\n", e.getClass()));
			}
		} else {

			if (e != null) {
				throw new RuntimeException(String.format(
						"Unsupported node type %s\n", e.getClass()));
			} else {
				throw new RuntimeException(String.format("Null node",
						e.getClass()));
			}

		}
		return ret;
	}

	public String operator(UnaryOp op) {
		switch (op) {
		case ISVOID:
			return "isvoid";
		case NEGATE:
			return "~";
		case NOT:
			return "not";
		}

		return null;
	}

	public String operator(BinaryOp op) {
		switch (op) {
		case PLUS:
			return "+";
		case MINUS:
			return "-";
		case MULT:
			return "*";
		case DIV:
			return "/";
		case LT:
			return "<";
		case LTE:
			return "<=";
		case EQUALS:
			return "=";
		}
		return null;
	}

	public String llvm_type(String type) {

		if (type == null)
			return "TypeRequestedForNull!";
		if (type.equals("Int"))
			return "i32";
		if (type.equals("Bool"))
			return "i1";
		if (type.equals("String"))
			return "i8*";

		return "%" + type;
	}

}