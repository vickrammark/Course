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
<h1 class="h1">Variables in C</h1>
<p>A <strong>variable</strong> is a name of the memory location. It is used to store data. Its value can be changed, and it can be reused many times.</p>
<p>It is a way to represent memory location through symbol so that it can be easily identified.</p>
<p>Let's see the syntax to declare a variable:</p>
<div class="codeblock"><textarea name="code" class="Cpp">
type variable_list;
</textarea></div>
<p>The example of declaring the variable is given below:
<div class="codeblock"><textarea name="code" class="Cpp">
int a;
float b;
char c;
</textarea></div>
<p>Here, a, b, c are variables. The int, float, char are the data types.</p>
<p>We can also provide values while declaring the variables as given below:</p>
<div class="codeblock"><textarea name="code" class="Cpp">
int a=10,b=20;//declaring 2 variable of integer type
float f=20.8;
char c='A';
</textarea></div>
<h2 class="h2">Rules for defining variables</h2>
<ul class="points">
<li>A variable can have alphabets, digits, and underscore.</li>
<li>A variable name can start with the alphabet, and underscore only. It can't start with a digit.</li>
<li>No whitespace is allowed within the variable name.</li>
<li>A variable name must not be any reserved word or keyword, e.g. int, float, etc.</li>
</ul>
<p><strong>Valid variable names:</strong></p>
<div class="codeblock"><textarea name="code" class="Cpp">
int a;
int _ab;
int a30;
</textarea></div>
<p><strong>Invalid variable names:</strong></p>
<div class="codeblock"><textarea name="code" class="Cpp">
int 2;
int a b;
int long;
</textarea></div>
<h2 class="h2">Types of Variables in C</h2>
<p>There are many types of variables in c:</p>
<ol class="points">
<li>local variable</li>
<li>global variable</li>
<li>static variable</li>
<li>automatic variable</li>
<li>external variable</li>
</ol>
<h3 class="h3">Local Variable</h3>
<p>A variable that is declared inside the function or block is called a local variable.</p>
<p>It must be declared at the start of the block.</p>
<div class="codeblock"><textarea name="code" class="Cpp">
void function1(){
int x=10;//local variable
}
</textarea></div>
<p>You must have to initialize the local variable before it is used.</p>
<h3 class="h3">Global Variable</h3>
<p>A variable that is declared outside the function or block is called a global variable. Any function can change the value of the global variable. It is available to all the functions.</p>
<p>It must be declared at the start of the block.</p>
<div class="codeblock"><textarea name="code" class="Cpp">
int value=20;//global variable
void function1(){
int x=10;//local variable
}
</textarea></div>
<h3 class="h3">Static Variable</h3>
<p>A variable that is declared with the static keyword is called static variable.</p>
<p>It retains its value between multiple function calls.</p>
<div class="codeblock"><textarea name="code" class="Cpp">
void function1(){
int x=10;//local variable
static int y=10;//static variable
x=x+1;
y=y+1;
printf("%d,%d",x,y);
}
</textarea></div>
<p>If you call this function many times, the <strong>local variable will print the same value</strong> for each function call, e.g, 11,11,11 and so on. But the <strong>static variable will print the incremented value</strong> in each function call, e.g. 11, 12, 13 and so on.</p>
<h3 class="h3">Automatic Variable</h3>
<p>All variables in C that are declared inside the block, are automatic variables by default. We can explicitly declare an automatic variable using <strong>auto keyword</strong>.</p>
<div class="codeblock"><textarea name="code" class="Cpp">

void main(){
int x=10;//local variable (also automatic)
auto int y=20;//automatic variable
}
</textarea></div>
<h3 class="h3">External Variable</h3>
<p>We can share a variable in multiple C source files by using an external variable. To declare an external variable, you need to use <strong>extern keyword</strong>.</p>
<p><span class="filename">myfile.h</span></p>
<div class="codeblock"><textarea name="code" class="Cpp">
extern int x=10;//external variable (also global)
</textarea></div>
<span class="filename">program1.c</span>
<div class="codeblock"><textarea name="code" class="Cpp">
#include "myfile.h"
#include &lt;stdio.h&gt;
void printValue(){
    printf("Global variable: %d", global_variable);
}
</textarea></div>
<hr />
<div class="nexttopicdiv">
<span class="nexttopictext">Next Topic</span><span class="nexttopiclink"><a href="data-types-in-c">Data Types in C</a></span>
</div>

<br /><br />
<div id="bottomnext">
<a style="float:left" class="next" href="printf-scanf">&larr; prev</a>
<a style="float:right" class="next" href="data-types-in-c">next &rarr;</a>
</div>
 </div>

</body>
</html>