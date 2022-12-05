package main;

import java.io.File;

import dsl.Arduino_DSL;

class DSL {
    public static void main(String[] args) {
        Arduino_DSL dsl = new Arduino_DSL();
        if(args.length > 0) {
            dsl.eval(new File(args[0]));
        } else {
            System.out.println("/!\\ Missing arg: Please specify the path to a Groovy script file to execute");
        }
    }
}
