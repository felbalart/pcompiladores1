package coolc.ast;

public class CallNode extends AstNode {

    private AstNode args;
    public AstNode getArgs() {
        return args;
    }

    private String id;
    public String getId() {
        return id;
    }

    public CallNode(String id, AstNode args) {
        super("call");
        this.id = id;
        this.args = args;
    }

}