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
	<div class="container-fluid" id="pagecontent">
		<h1 class="h1">Python Keywords</h1>
		<p>Python Keywords are special reserved words that convey a
			special meaning to the compiler/interpreter. Each keyword has a
			special meaning and a specific operation. These keywords can't be
			used as a variable. Following is the List of Python Keywords.</p>
		<table class="alt">
		<caption></caption>
		    <tr>
		    <th scope="col">
		    </tr>
			<tr>
				<td>True</td>
				<td>False</td>
				<td>None</td>
				<td>and</td>
				<td>as</td>
			</tr>
			<tr>
				<td>asset</td>
				<td>def</td>
				<td>class</td>
				<td>continue</td>
				<td>break</td>
			</tr>
			<tr>
				<td>else</td>
				<td>finally</td>
				<td>elif</td>
				<td>del</td>
				<td>except</td>
			</tr>
			<tr>
				<td>global</td>
				<td>for</td>
				<td>if</td>
				<td>from</td>
				<td>import</td>
			</tr>
			<tr>
				<td>raise</td>
				<td>try</td>
				<td>or</td>
				<td>return</td>
				<td>pass</td>
			</tr>
			<tr>
				<td>nonlocal</td>
				<td>in</td>
				<td>not</td>
				<td>is</td>
				<td>lambda</td>
			</tr>
		</table>
		<p>Consider the following explanation of keywords.</p>
		<ol class="points">
			<li><strong>True -</strong> It represents the Boolean true, if
				the given condition is true, then it returns "True". Non-zero values
				are treated as true.</li>
			<li><strong>False -</strong> It represents the Boolean false; if
				the given condition is false, then it returns "False". Zero value is
				treated as false</li>
			<li><strong>None -</strong> It denotes the null value or void.
				An empty list or Zero can't be treated as <strong>None</strong>.</li>
			<li><strong>and -</strong> It is a logical operator. It is used
				to check the multiple conditions. It returns true if both conditions
				are true. Consider the following truth table.</li>
		</ol>
		<table class="alt">
		<caption></caption>
			<tr>
				<th scope="col">A</th>
				<th scope="col">B</th>
				<th scope="col">A and B</th>
			</tr>
			<tr>
				<td>True</td>
				<td>True</td>
				<td>True</td>
			</tr>
			<tr>
				<td>True</td>
				<td>False</td>
				<td>False</td>
			</tr>
			<tr>
				<td>False</td>
				<td>True</td>
				<td>False</td>
			</tr>
			<tr>
				<td>False</td>
				<td>False</td>
				<td>False</td>
			</tr>
		</table>
		<p>
			<strong>5. or</strong> - It is a logical operator in Python. It
			returns true if one of the conditions is true. Consider the following
			truth table.
		</p>
		<table class="alt">
		<caption></caption>
			<tr>
				<th scope="col">A</th>
				<th scope="col">B</th>
				<th scope="col">A and B</th>
			</tr>
			<tr>
				<td>True</td>
				<td>True</td>
				<td>True</td>
			</tr>
			<tr>
				<td>True</td>
				<td>False</td>
				<td>True</td>
			</tr>
			<tr>
				<td>False</td>
				<td>True</td>
				<td>True</td>
			</tr>
			<tr>
				<td>False</td>
				<td>False</td>
				<td>False</td>
			</tr>
		</table>
		<p>
			<strong>6. not</strong> - It is a logical operator and inverts the
			truth value. Consider the following truth table.
		</p>
		<table class="alt">
		<caption></caption>
			<tr>
				<th scope="col">A</th>
				<th scope="col">Not A</th>
			</tr>
			<tr>
				<td>True</td>
				<td>False</td>
			</tr>
			<tr>
				<td>False</td>
				<td>True</td>
			</tr>
		</table>
		<p>
			<strong>7. assert -</strong> This keyword is used as the debugging
			tool in Python. It checks the correctness of the code. It raises an <strong>AssertionError</strong>
			if found any error in the code and also prints the message with an
			error.
		</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
a = 10
b = 0
print('a is dividing by Zero')
assert b != 0
print(a / b)
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>a is dividing by Zero
Runtime Exception:
Traceback (most recent call last):
  File "/home/40545678b342ce3b70beb1224bed345f.py", line 4, in  
    assert b != 0, "Divide by 0 error"
AssertionError: Divide by 0 error
</pre>
		</div>
		<p>
			<strong>8. def -</strong> This keyword is used to declare the
			function in Python. If followed by the function name.
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
def my_func(a,b):
	c = a+b
	print(c)
my_func(10,20)
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>30
</pre>
		</div>
		<p>
			<strong>9. class -</strong> It is used to represents the class in
			Python. The class is the blueprint of the objects. It is the
			collection of the variable and methods. Consider the following class.
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
class Myclass:
   #Variables&hellip;&hellip;..
   def function_name(self):
      #statements&hellip;&hellip;&hellip;
</textarea>
		</div>
		<p>
			<strong>10. continue -</strong> It is used to stop the execution of
			the current iteration. Consider the following example.
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
a = 0
while a < 4:
  a += 1 
  if a == 2:
    continue
  print(a)
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>1
3
4
</pre>
		</div>
		<p>
			<strong>11. break -</strong> It is used to terminate the loop
			execution and control transfer to the end of the loop. Consider the
			following example.
		</p>
		<p>
			<strong>Example</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
for i in range(5):
    if(i==3):
        break
    print(i)
print("End of execution")
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>0
1
2
End of execution
</pre>
		</div>
		<p>
			<strong>12. If -</strong> It is used to represent the conditional
			statement. The execution of a particular block is decided by if
			statement. Consider the following example.
		</p>
		<p>
			<strong>Example</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
i = 18
if (1 < 12):
print("I am less than 18")
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>I am less than 18
</pre>
		</div>
		<p>
			<strong>13. else -</strong> The else statement is used with the if
			statement. When if statement returns false, then else block is
			executed. Consider the following example.
		</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
n = 11
if(n%2 == 0):
    print("Even")
else:
    print("odd")
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>Odd
</pre>
		</div>
		<p>
			<strong>14. elif -</strong> This Keyword is used to check the
			multiple conditions. It is short for <strong>else-if</strong>. If the
			previous condition is false, then check until the true condition is
			found. Condition the following example.
		</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
marks = int(input("Enter the marks:"))
if(marks>=90):
    print("Excellent")
elif(marks<90 and marks>=75):
    print("Very Good")
elif(marks<75 and marks>=60):
    print("Good")
else:
    print("Average")
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>Enter the marks:85
Very Good
</pre>
		</div>
		<p>
			<strong>15. del -</strong> It is used to delete the reference of the
			object. Consider the following example.
		</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
a=10
b=12
del a
print(b)
# a is no longer exist
print(a)  
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>12
NameError: name 'a' is not defined
</pre>
		</div>
		<p>
			<strong>16. try, except -</strong> The try-except is used to handle
			the exceptions. The exceptions are run-time errors. Consider the
			following example.
		</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
a = 0
try:
   b = 1/a
except Exception as e:
   print(e)
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>division by zero
</pre>
		</div>
		<p>
			<strong>17. raise -</strong> The raise keyword is used to through the
			exception forcefully. Consider the following example.
		</p>
		<p>
			<strong>Example</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
a = 5
if (a>2):
   raise Exception('a should not exceed 2 ')
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>Exception: a should not exceed 2
</pre>
		</div>
		<p>
			<strong>18. finally -</strong> The <strong>finally</strong> keyword
			is used to create a block of code that will always be executed no
			matter the else block raises an error or not. Consider the following
			example.
		</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
a=0
b=5
try:
    c = b/a
    print(c)
except Exception as e:
    print(e)
finally:
    print('Finally always executed')
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>division by zero
Finally always executed
</pre>
		</div>
		<p>
			<strong>19. for, while -</strong> Both keywords are used for
			iteration. The <strong>for</strong> keyword is used to iterate over
			the sequences (list, tuple, dictionary, string). A while loop is
			executed until the condition returns false. Consider the following
			example.
		</p>
		<p>
			<strong>Example: For loop</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
list = [1,2,3,4,5]
for i in list:
    print(i)
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>1
2
3
4
5
</pre>
		</div>
		<p>
			<strong>Example: While loop</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
a = 0
while(a<5):
    print(a)
    a = a+1
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>0
1
2
3
4
</pre>
		</div>
		<p>
			<strong>20. import -</strong> The import keyword is used to import
			modules in the current Python script. The module contains a runnable
			Python code.
		</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
import math
print(math.sqrt(25))
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>5
</pre>
		</div>
		<p>
			<strong>21. from -</strong> This keyword is used to import the
			specific function or attributes in the current Python script.
		</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
from math import sqrt
print(sqrt(25))
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>5
</pre>
		</div>
		<p>
			<strong>22. as -</strong> It is used to create a name alias. It
			provides the user-define name while importing a module.
		</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
import calendar as cal
print(cal.month_name[5])
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>May
</pre>
		</div>
		<p>
			<strong>23. pass -</strong> The <strong>pass</strong> keyword is used
			to execute nothing or create a placeholder for future code. If we
			declare an empty class or function, it will through an error, so we
			use the pass keyword to declare an empty class or function.
		</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
class my_class:
	pass

def my_func(): 
	pass 
</textarea>
		</div>
		<p>
			<strong>24. return -</strong> The <strong>return</strong> keyword is
			used to return the result value or none to called function.
		</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
def sum(a,b):
    c = a+b
    return c
    
print("The sum is:",sum(25,15))
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>The sum is: 40
</pre>
		</div>
		<p>
			<strong>25. is -</strong> This keyword is used to check if the
			two-variable refers to the same object. It returns the true if they
			refer to the same object otherwise false. Consider the following
			example.
		</p>
		<p>
			<strong>Example</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
x = 5
y = 5

a = []
b = []
print(x is y)
print(a is b)
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>True
False
</pre>
		</div>
		<h4 class="n">Note: A mutable data-types do not refer to the same
			object.</h4>
		<p>
			<strong>26. global -</strong> The global keyword is used to create a
			global variable inside the function. Any function can access the
			global. Consider the following example.
		</p>
		<p>
			<strong>Example</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
def my_func():
    global a 
    a = 10
    b = 20
    c = a+b
    print(c)
    
my_func()

def func():
    print(a)
    
func()
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>30
10
</pre>
		</div>
		<p>
			<strong>27. nonlocal -</strong> The <strong>nonlocal</strong> is
			similar to the <strong>global</strong> and used to work with a
			variable inside the nested function(function inside a function).
			Consider the following example.
		</p>
		<p>
			<strong>Example</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
def outside_function():  
    a = 20   
    def inside_function():  
        nonlocal a  
        a = 30  
        print("Inner function: ",a)  
    inside_function()  
    print("Outer function: ",a)  
outside_function() 
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>Inner function:  30
Outer function:  30
</pre>
		</div>
		<p>
			<strong>28. lambda -</strong> The lambda keyword is used to create
			the anonymous function in Python. It is an inline function without a
			name. Consider the following example.
		</p>
		<p>
			<strong>Example</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
a = lambda x: x**2
for i in range(1,6):
  print(a(i))
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>1
4
9
16
25
</pre>
		</div>
		<p>
			<strong>29. yield -</strong> The <strong>yield</strong> keyword is
			used with the Python generator. It stops the function's execution and
			returns value to the caller. Consider the following example.
		</p>
		<p>
			<strong>Example</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
def fun_Generator():
  yield 1
  yield 2
  yield 3


# Driver code to check above generator function 
for value in fun_Generator():
  print(value)
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>1
2
3
</pre>
		</div>
		<p>
			<strong>30. with -</strong> The <strong>with</strong> keyword is used
			in the exception handling. It makes code cleaner and more readable.
			The advantage of using <strong>with</strong>, we don't need to call <strong>close()</strong>.
			Consider the following example.
		</p>
		<p>
			<strong>Example</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
with open('file_path', 'w') as file: 
    file.write('hello world !')
</textarea>
		</div>
		<p>
			<strong>31. None -</strong> The None keyword is used to define the
			null value. It is remembered that <strong>None</strong> does not
			indicate 0, false, or any empty data-types. It is an object of its
			data type, which is Consider the following example.
		</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
def return_none():
  a = 10
  b = 20
  c = a + b

x = return_none()
print(x)
</textarea>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>None
</pre>
		</div>
		<p>We have covered all Python keywords. This is the brief
			introduction of Python Keywords. We will learn more in the upcoming
			tutorials.</p>
		<hr />
		<div class="nexttopicdiv">
			<span class="nexttopictext">Next Topic</span><span
				class="nexttopiclink"><a href="python-literals">Python
					Literals</a></span>
		</div>
		<br />
		<br />
		<div id="bottomnext">
			<a style="float: left" class="next" href="python-data-types">&larr;
				prev</a> <a style="float: right" class="next" href="python-literals">next
				&rarr;</a>
		</div>
	</div>
</body>
</html>