<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/app/python.css">
</head>
<body>
	<div class="container-fluid" id="pagecontext">
		<h1 class="h1">printf() and scanf() in C</h1>
		<p>The printf() and scanf() functions are used for input and
			output in C language. Both functions are inbuilt library functions,
			defined in stdio.h (header file).</p>
		<h3 class="h3">printf() function</h3>
		<p>
			The <strong>printf() function</strong> is used for output. It prints
			the given statement to the console.
		</p>
		<p>The syntax of printf() function is given below:</p>
		<div class="codeblock">
			<textarea name="code" class="Cpp">
printf("format string",argument_list);
</textarea>
		</div>
		<p>
			The <strong>format string</strong> can be %d (integer), %c
			(character), %s (string), %f (float) etc.
		</p>
		<hr />
		<h3 class="h3">scanf() function</h3>
		<p>
			The <strong>scanf() function</strong> is used for input. It reads the
			input data from the console.
		</p>
		<div class="codeblock">
			<textarea name="code" class="Cpp">
scanf("format string",argument_list);
</textarea>
		</div>
		<h3 class="h3">Program to print cube of given number</h3>
		<p>Let's see a simple example of c language that gets input from
			the user and prints the cube of the given number.</p>
		<div class="codeblock">
			<textarea name="code" class="Cpp">
#include<stdio.h>  
int main(){  
int number;  
printf("enter a number:");  
scanf("%d",&amp;number);  
printf("cube of number is:%d ",number*number*number);  
return 0;
}  
</textarea>
		</div>
		<p>
			<strong>Output</strong>
		</p>
		<div class="codeblock3">
			<pre>enter a number:5
cube of number is:125
</pre>
		</div>
		<p>
			The <strong>scanf("%d",&amp;number)</strong> statement reads integer
			number from the console and stores the given value in number
			variable.
		</p>
		<p>
			The <strong>printf("cube of number is:%d
				",number*number*number)</strong> statement prints the cube of number on the
			console.
		</p>
		<h3 class="h3">Program to print sum of 2 numbers</h3>
		<p>Let's see a simple example of input and output in C language
			that prints addition of 2 numbers.</p>
		<div class="codeblock">
			<textarea name="code" class="Cpp">
#include<stdio.h>  
int main(){  
int x=0,y=0,result=0;

printf("enter first number:");
scanf("%d",&amp;x);
printf("enter second number:");
scanf("%d",&amp;y);

result=x+y;
printf("sum of 2 numbers:%d ",result);

return 0;
}  
</textarea>
		</div>
		<p>
			<strong>Output</strong>
		</p>
		<div class="codeblock3">
			<pre>enter first number:9
enter second number:9
sum of 2 numbers:18
</pre>
		</div>
		<hr />
		<div class="nexttopicdiv">
			<span class="nexttopictext">Next Topic</span><span
				class="nexttopiclink"><a href="variables-in-c">Variables
					in C</a></span>
		</div>

		<br />
		<br />
		<div id="bottomnext">
			<a style="float: left" class="next" href="compilation-process-in-c">&larr;
				prev</a> <a style="float: right" class="next" href="variables-in-c">next
				&rarr;</a>
		</div>
	</div>
<body>

</body>
</html>