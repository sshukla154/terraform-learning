package sshukla.learning;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import com.amazonaws.services.lambda.runtime.LambdaLogger;

public class Handler implements RequestHandler <String, String > {
    @Override
    public String handleRequest(String event, Context context) {
        return "Hello-World-From-AWS-Lambda";
    }
}