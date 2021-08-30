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
		<h1 class="h1">Python Comments</h1>
		<p>Python Comment is an essential tool for the programmers.
			Comments are generally used to explain the code. We can easily
			understand the code if it has a proper explanation. A good programmer
			must use the comments because in the future anyone wants to modify
			the code as well as implement the new module; then, it can be done
			easily.</p>
		<p>In the other programming language such as C++, It provides the
			// for single-lined comment and /*.... */ for multiple-lined comment,
			but Python provides the single-lined Python comment. To apply the
			comment in the code we use the hash(#) at the beginning of the
			statement or code.</p>
		<p>Let's understand the following example.</p>
		<div class="codeblock">
			<pre name="code" class="python"># This is the print statement
print("Hello Python")
</pre>
		</div>
		<p>Here we have written comment over the print statement using the
			hash(#). It will not affect our print statement.</p>
		<h2 class="h2">Multiline Python Comment</h2>
		<p>We must use the hash(#) at the beginning of every line of code
			to apply the multiline Python comment. Consider the following
			example.</p>
		<div class="codeblock">
			<pre name="code" class="python"># First line of the comment 
# Second line of the comment
# Third line of the comment
</pre>
		</div>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<pre name="code" class="python"># Variable a holds value 5
# Variable b holds value 10
# Variable c holds sum of a and b
# Print the result
a = 5
b = 10
c = a+b
print("The sum is:", c)
</pre>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>The sum is: 15
</pre>
		</div>
		<p>The above code is very readable even the absolute beginners can
			under that what is happening in each line of the code. This is the
			advantage of using comments in code.</p>
		<p>We can also use the triple quotes ('''''') for multiline
			comment. The triple quotes are also used to string formatting.
			Consider the following example.</p>
		<h2 class="h2">Docstrings Python Comment</h2>
		<p>The docstring comment is mostly used in the module, function,
			class or method. It is a documentation Python string. We will explain
			the class/method in further tutorials.</p>
		<p>
			<strong>Example:</strong>
		</p>
		<div class="codeblock">
			<pre name="code" class="python">def intro():
  """
  This function prints Hello Joseph
  """
  print("Hi Joseph")            
intro()
</pre>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>Hello Joseph
</pre>
		</div>
		<p>We can check a function's docstring by using the __doc__
			attribute.</p>
		Generally, four whitespaces are used as the indentation. The amount of
		indentation depends on user, but it must be consistent throughout that
		block.
		<div class="codeblock">
			<pre name="code" class="python">def intro():
  """
  This function prints Hello Joseph
  """
  print("Hello Joseph")            
intro.__doc__
</pre>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>Output:
'\n  This function prints Hello Joseph\n  '
</pre>
		</div>
		<h4 class="n">Note: The docstring must be the first thing in the
			function; otherwise, Python interpreter cannot get the docstring.</h4>
		<h2 class="h2">Python indentation</h2>
		<p>Python indentation uses to define the block of the code. The
			other programming languages such as C, C++, and Java use curly braces
			{}, whereas Python uses an indentation. Whitespaces are used as
			indentation in Python.</p>
		<p>Indentation uses at the beginning of the code and ends with the
			unintended line. That same line indentation defines the block of the
			code (body of a function, loop, etc.)</p>
		<p>Generally, four whitespaces are used as the indentation. The
			amount of indentation depends on user, but it must be consistent
			throughout that block.</p>
		<div class="codeblock">
			<pre name="code" class="python">for i in range(5):
    print(i)
    if(i == 3):
        break
</pre>
		</div>
		<p>To indicate a block of code we indented each line of the block
			by the same whitespaces.</p>
		<p>Consider the following example.</p>
		<div class="codeblock">
			<pre name="code" class="python">dn = int(input("Enter the number:"))
if(n%2 == 0):
    print("Even Number")
else:
    print("Odd Number")
   
print("Task Complete")
</pre>
		</div>
		<p>
			<strong>Output:</strong>
		</p>
		<div class="codeblock3">
			<pre>Enter the number: 10
Even Number
Task Complete
</pre>
		</div>
		<p>
			The above code, <strong>if</strong> and <strong>else</strong> are two
			separate code blocks. Both code blocks are indented four spaces. The
			print("Task Complete") statement is not indented four whitespaces and
			it is out of the <strong>if-else</strong> block.
		</p>
		<p>
			If the indentation is not used properly, then that will result in <strong>IndentationError</strong>.
		</p>
		<hr />
		<div class="nexttopicdiv">
			<span class="nexttopictext">Next Topic</span><span
				class="nexttopiclink"><a href="python-if-else">Python If
					Else</a></span>
		</div>

		<br />
		<br />
		<div id="bottomnext">
			<a style="float: left" class="next" href="python-operators">&larr;
				prev</a> <a style="float: right" class="next" href="python-if-else">next
				&rarr;</a>
		</div>
	</div>
</body>
</html>