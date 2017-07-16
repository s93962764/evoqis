package org.apache.commons;


	 import java.io.File;
	 import java.io.IOException;
	 import java.util.Date;

	 public class FileCopyExample {

	    
	     public static void main(String args[]) throws IOException {
	         //absolute path for source file to be copied
	         String source = "C:/sample.txt";
	         //directory where file will be copied
	         String target ="C:/Test/";
	      
	         //name of source file
	         File sourceFile = new File(source);
	         String name = sourceFile.getName();
	      
	         File targetFile = new File(target+name);
	         System.out.println("Copying file : " + sourceFile.getName() +" from Java Program");
	      
	         //copy file from one location to other
	         FileUtils.copyFile(sourceFile, targetFile);
	      
	         System.out.println("copying of file from Java program is completed");
	     }
	    
	 }

