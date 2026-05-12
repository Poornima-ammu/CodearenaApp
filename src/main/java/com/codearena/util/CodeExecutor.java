package com.codearena.util;
import java.io.*;


public class CodeExecutor {
	 public String executeJava(String code) {
		 try {
			 File folder=new File("C:/codearena/temp");
			 folder.mkdirs();
			 
			 File javaFile=new File(folder,"Main.java");
			 FileWriter writer=new FileWriter(javaFile);
			 writer.write(code);
			 writer.close();
			 
			 //Compile
			 
			 ProcessBuilder compile=new ProcessBuilder("javac",javaFile.getAbsolutePath());
			 Process compileProcess=compile.start();
			 compileProcess.waitFor();
			 
			 
			 BufferedReader errorReader =
					 new BufferedReader(
					 new InputStreamReader(
					 compileProcess.getErrorStream()));

					 String errorLine;

					 StringBuilder compileErrors =
					 new StringBuilder();

					 while((errorLine = errorReader.readLine()) != null){

					     compileErrors.append(errorLine).append("\n");
					 }

					 if(compileErrors.length() > 0){
					     return compileErrors.toString();
					 }
			 
			 //RUN
			 
			 ProcessBuilder run=new ProcessBuilder("java","-cp",folder.getAbsolutePath(),"Main");
			 Process runProcess=run.start();
			 runProcess.waitFor();
			 
			 BufferedReader reader=new BufferedReader(new InputStreamReader(
					 runProcess.getInputStream()));
			 
			 
			 String line;
			 StringBuilder output=new StringBuilder();
			 while((line=reader.readLine())!=null) {
				 output.append(line).append("\n");
				 
			 }
			 return output.toString();
		 }catch(Exception e) {
			 e.printStackTrace();
			 return "Error: "+ e.getMessage();
		 }
	 }

}
