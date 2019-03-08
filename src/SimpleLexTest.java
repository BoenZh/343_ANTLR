import org.antlr.v4.runtime.*;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.*;

public class SimpleLexTest {
    public static void main(String [] args) {

        String fileName = "test.txt";
        ANTLRInputStream stream = null;
        try {
            stream = new ANTLRInputStream(new FileInputStream(fileName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        SimpleLex lexer = new SimpleLex(stream);
        CommonTokenStream tokens = new CommonTokenStream(lexer);
        tokens.fill();
        for (int i = 0; i < tokens.size(); i++)
        {
            Token tok = tokens.get(i);
            System.out.printf("%-5d: %s\n", tok.getType(), tok.getText());
        }
    }
}
