<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="/app/python.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1 class="h1">First Python Program</h1>
	<p>
		In this Section, we will discuss the basic syntax of Python, we will
		run a simple program to print <strong>Hello World</strong> on the
		console.
	</p>
	<p>Python provides us the two ways to run a program:</p>
	<ul class="points">
		<li>Using Interactive interpreter prompt</li>
		<li>Using a script file</li>
	</ul>
	<p>Let's discuss each one of them in detail.</p>
	<h2 class="h2">Interactive interpreter prompt</h2>
	<p>
		<a href="https://www.javatpoint.com/python-tutorial">Python</a>
		provides us the feature to execute the Python statement one by one at
		the interactive prompt. It is preferable in the case where we are
		concerned about the output of each line of our <a
			href="https://www.javatpoint.com/python-programs">Python program</a>.
	</p>
	<p>To open the interactive mode, open the terminal (or command
		prompt) and type python (python3 in case if you have Python2 and
		Python3 both installed on your system).</p>
	<p>It will open the following prompt where we can execute the
		Python statement and check their impact on the console.</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program.png"
		alt="First Python Program" />
	<p>
		After writing the print statement, press the <strong>Enter</strong>
		key.
	</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program2.png"
		alt="First Python Program" />
	<p>
		Here, we get the message <strong>"Hello World !"</strong> printed on
		the console.
	</p>
	<h2 class="h2">Using a script file (Script Mode Programming)</h2>
	<p>The interpreter prompt is best to run the single-line statements
		of the code. However, we cannot write the code every-time on the
		terminal. It is not suitable to write multiple lines of code.</p>
	<p>
		Using the script mode, we can write multiple lines code into a file
		which can be executed later. For this purpose, we need to open an
		editor like notepad, create a file named and save it with <strong>.py</strong>
		extension, which stands for <strong>"Python".</strong> Now, we will
		implement the above example using the script mode.
	</p>
	<div class="codeblock">
		<textarea name="code" class="python">
print ("hello world"); #here, we have used print() function to print the message on the console.  
</textarea>
	</div>
	<p>To run this file named as first.py, we need to run the following
		command on the terminal.</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program3.png"
		alt="First Python Program" />
	<p>
		<strong>Step - 1:</strong> Open the Python interactive shell, and
		click <strong>"File"</strong> then choose <strong>"New",</strong> it
		will open a new blank script in which we can write our code.
	</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program4.png"
		alt="First Python Program" />
	<p>
		<strong>Step -2:</strong> Now, write the code and press <strong>"Ctrl+S"</strong>
		to save the file.
	</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program5.png"
		alt="First Python Program" />
	<p>
		<strong>Step - 3:</strong> After saving the code, we can run it by
		clicking "Run" or "Run Module". It will display the output to the
		shell.
	</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program6.png"
		alt="First Python Program" />
	<p>The output will be shown as follows.</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program7.png"
		alt="First Python Program" />
	<p>
		<strong>Step - 4:</strong> Apart from that, we can also run the file
		using the operating system terminal. But, we should be aware of the
		path of the directory where we have saved our file.
	</p>
	<ul class="points">
		<li>Open the command line prompt and navigate to the directory.</li>
	</ul>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program8.png"
		alt="First Python Program" />
	<ul class="points">
		<li>We need to type the <strong>python</strong> keyword, followed
			by the file name and hit enter to run the Python file.
		</li>
	</ul>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program9.png"
		alt="First Python Program" />
	<h2 class="h2">Multi-line Statements</h2>
	<p>
		Multi-line statements are written into the notepad like an editor and
		saved it with <strong>.py</strong> extension. In the following
		example, we have defined the execution of the multiple code lines
		using the Python script.
	</p>
	<p>
		<strong>Code:</strong>
	</p>
	<div class="codeblock">
		<textarea name="code" class="python">
name = "Andrew Venis"
branch = "Computer Science"
age = "25"
print("My name is: ", name, )
print("My age is: ", age)
</textarea>
	</div>
	<p>
		<strong>Script File:</strong>
	</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program10.png"
		alt="First Python Program" />
	<br>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program11.png"
		alt="First Python Program" />
	<h3 class="h3">Pros and Cons of Script Mode</h3>
	<p>The script mode has few advantages and disadvantages as well.
		Let's understand the following advantages of running code in script
		mode.</p>
	<ul class="points">
		<li>We can run multiple lines of code.</li>
		<li>Debugging is easy in script mode.</li>
		<li>It is appropriate for beginners and also for experts.</li>
	</ul>
	<p>Let's see the disadvantages of the script mode.</p>
	<ul class="points">
		<li>We have to save the code every time if we make any change in
			the code.</li>
		<li>It can be tedious when we run a single or a few lines of
			code.</li>
	</ul>
	<h2 class="h2">Get Started with PyCharm</h2>
	<p>In our first program, we have used gedit on our CentOS as an
		editor. On Windows, we have an alternative like notepad or notepad++
		to edit the code. However, these editors are not used as IDE for
		python since they are unable to show the syntax related suggestions.</p>
	<p>
		JetBrains provides the most popular and a widely used cross-platform
		IDE <strong>PyCharm</strong> to run the python programs.
	</p>
	<h2 class="h2">PyCharm installation</h2>
	<p>
		As we have already stated, PyCharm is a cross-platform IDE, and hence
		it can be installed on a variety of the operating systems. In this
		section of the tutorial, we will cover the installation process of
		PyCharm on Windows, <a
			href="https://www.javatpoint.com/how-to-install-pycharm-on-mac">MacOS</a>,
		<a href="https://www.javatpoint.com/how-to-install-pycharm-on-centos">CentOS</a>,
		and <a
			href="https://www.javatpoint.com/how-to-install-pycharm-in-ubuntu">Ubuntu</a>.
	</p>
	<h3 class="h3">Windows</h3>
	<p>
		Installing PyCharm on Windows is very simple. To install PyCharm on
		Windows operating system, visit the link <a
			href="https://www.jetbrains.com/pycharm/download/download-thanks.html?platform=windows"
			target="_blank" rel="nofollow">https://www.jetbrains.com/pycharm/download/download-thanks.html?platform=windows</a>
		to download the executable installer. <strong>Double click</strong>
		the installer (.exe) file and install PyCharm by clicking next at each
		step.
	</p>
	<p>To create a first program to Pycharm follows the following step.</p>
	<p>
		<strong>Step - 1.</strong> Open Pycharm editor. Click on "Create New
		Project" option to create new project.
	</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program-pycharm-installation.png"
		alt="First Python Program" />
	<p>
		<strong>Step - 2.</strong> Select a location to save the project.
	</p>
	<ol class="pointsa">
		<li>We can save the newly created project at desired memory
			location or can keep file location as it is but atleast change the
			project default name <strong>untitled</strong> to <strong>"FirstProject"</strong>
			or something meaningful.
		</li>
		<li>Pycharm automatically found the installed Python interpreter.</li>
		<li>After change the name click on the "Create" Button.</li>
	</ol>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program-pycharm-installation2.png"
		alt="First Python Program" />
	<p>
		<strong>Step - 3.</strong> Click on "<strong>File"</strong> menu and
		select <strong>"New"</strong>. By clicking "New" option it will show
		various file formats. Select the "Python File".
	</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program-pycharm-installation3.png"
		alt="First Python Program" />
	<p>
		<strong>Step - 4.</strong> Now type the name of the Python file and
		click on "OK". We have written the "FirstProgram".
	</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program-pycharm-installation4.png"
		alt="First Python Program" />
	<p>
		<strong>Step - 5.</strong> Now type the first program - print("Hello
		World") then click on the "Run" menu to run program.
	</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program-pycharm-installation5.png"
		alt="First Python Program" />
	<p>
		<strong>Step - 6.</strong> The output will appear at the bottom of the
		screen.
	</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program-pycharm-installation6.png"
		alt="First Python Program" />
	<h2 class="h2">Basic Syntax of Python</h2>
	<h3 class="h3">Indentation and Comment in Python</h3>
	<p>
		Indentation is the most significant concept of the Python programming
		language. Improper use of indentation will end up <strong>"IndentationError"</strong>
		in our code.
	</p>
	<p>
		Indentation is nothing but adding whitespaces before the statement
		when it is needed. Without indentation Python doesn't know which
		statement to be executed to next. Indentation also defines which
		statements belong to which block. If there is no indentation or
		improper indentation, it will display "<strong>IndentationError"</strong>
		and interrupt our code.
	</p>
	<img
		src="https://static.javatpoint.com/python/images/first-python-program12.png"
		alt="First Python Program" />
	<p>
		Python indentation defines the particular group of statements belongs
		to the particular block. The programming languages such as <a
			href="https://www.javatpoint.com/c-programming-language-tutorial">C</a>,
		<a href="https://www.javatpoint.com/cpp-tutorial">C++</a>, <a
			href="https://www.javatpoint.com/java-tutorial">java</a> use the
		curly braces {} to define code blocks.
	</p>
	<p>In Python, statements that are the same level to the right
		belong to the same block. We can use four whitespaces to define
		indentation. Let's see the following lines of code.</p>
	<p>
		<strong>Example -</strong>
	</p>
	<div class="codeblock">
		<textarea name="code" class="python">
list1 = [1, 2, 3, 4, 5]
for i in list1:
    print(i)
    if i==4:
       break
print("End of for loop")
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
End of for loop
</pre>
	</div>
	<p>
		<strong>Explanation:</strong>
	</p>
	<p>
		In the above code, for loop has a code blocks and if the statement has
		its code block inside for loop. Both indented with four whitespaces.
		The last <strong>print()</strong> statement is not indented; that's
		means it doesn't belong to for loop.
	</p>
	<h3 class="h3">Comments in Python</h3>
	<p>
		<a href="python-comments">Comments</a> are essential for defining the
		code and help us and other to understand the code. By looking the
		comment, we can easily understand the intention of every line that we
		have written in code. We can also find the error very easily, fix
		them, and use in other applications.
	</p>
	<p>In Python, we can apply comments using the # hash character. The
		Python interpreter entirely ignores the lines followed by a hash
		character. A good programmer always uses the comments to make code
		under stable. Let's see the following example of a comment.</p>
	<div class="codeblock">
		<textarea name="code" class="python">
name  = "Thomas"   # Assigning string value to the name variable 
</textarea>
	</div>
	<p>We can add comment in each line of the Python code.</p>
	<div class="codeblock">
		<textarea name="code" class="python">
Fees = 10000      # defining course fees is 10000
Fees = 20000      # defining course fees is 20000
</textarea>
	</div>
	<p>It is good idea to add code in any line of the code section of
		code whose purpose is not obvious. This is a best practice to learn
		while doing the coding.</p>
	<h3 class="h3">Types of Comment</h3>
	<p>Python provides the facility to write comments in two ways-
		single line comment and multi-line comment.</p>
	<p>
		<strong>Single-Line Comment -</strong> Single-Line comment starts with
		the hash # character followed by text for further explanation.
	</p>
	<div class="codeblock">
		<textarea name="code" class="python">
# defining the marks of a student 
Marks = 90
</textarea>
	</div>
	<p>We can also write a comment next to a code statement. Consider
		the following example.</p>
	<div class="codeblock">
		<textarea name="code" class="python">
Name = "James"   # the name of a student is James
Marks = 90            # defining student's marks
Branch = "Computer Science"   # defining student branch
</textarea>
	</div>
	<p>
		<strong>Multi-Line Comments -</strong> Python doesn't have explicit
		support for multi-line comments but we can use hash # character to the
		multiple lines. <strong>For example -</strong>
	</p>
	<div class="codeblock">
		<textarea name="code" class="python">
# we are defining for loop
# To iterate the given list.
# run this code.
</textarea>
	</div>
	<p>We can also use another way.</p>
	<div class="codeblock">
		<textarea name="code" class="python">
" " " 
This is an example
Of multi-line comment
Using triple-quotes 
" " "
</textarea>
	</div>
	<p>
		This is the basic introduction of the comments. Visit our <strong>Python
			Comment</strong> tutorial to learn it in detail.
	</p>
	<h2 class="h2">Python Identifiers</h2>
	<p>Python identifiers refer to a name used to identify a variable,
		function, module, class, module or other objects. There are few rules
		to follow while naming the Python Variable.</p>
	<ul class="points">
		<li>A variable name must start with either an English letter or
			underscore (_).</li>
		<li>A variable name cannot start with the number.</li>
		<li>Special characters are not allowed in the variable name.</li>
		<li>The variable's name is case sensitive.</li>
	</ul>
	<p>Let's understand the following example.</p>
	<p>
		<strong>Example -</strong>
	</p>
	<div class="codeblock">
		<textarea name="code" class="python">
number = 10
print(num)

_a = 100
print(_a)

x_y = 1000
print(x_y)
</textarea>
	</div>
	<p>
		<strong>Output:</strong>
	</p>
	<div class="codeblock3">
		<pre>10
100
1000
</pre>
	</div>
	<p>We have defined the basic syntax of the Python programming
		language. We must be familiar with the core concept of any programming
		languages. Once we memorize the concepts as mentioned above. The
		journey of learning Python will become easier.</p>
	<h3 class="h3">CentOS</h3>
	<p>
		To install PyCharm on CentOS, visit the link <a
			href="how-to-install-pycharm-on-centos"><em>https://www.javatpoint.com/how-to-install-pycharm-on-centos</em></a>.
		The link will guide you to install PyCharm on the CentOS.
	</p>
	<h3 class="h3">MacOS</h3>
	<p>
		To install PyCharm on MacOS, visit the link <a
			href="how-to-install-pycharm-on-mac"><em>https://www.javatpoint.com/how-to-install-pycharm-on-mac</em></a>.
		The link will guide you to install PyCharm on the MacOS.
	</p>
	<h3 class="h3">Ubuntu</h3>
	<p>
		To install PyCharm on Ubuntu, visit the link <a
			href="how-to-install-pycharm-in-ubuntu"><em>https://www.javatpoint.com/how-to-install-pycharm-in-ubuntu</em></a>.
		The link will guide you to install PyCharm on Ubuntu.
	</p>
	<hr />
	<div class="nexttopicdiv">
		<span class="nexttopictext">Next Topic</span><span
			class="nexttopiclink"><a href="python-variables">Python
				Variables</a></span>
	</div>

	<br />
	<br />
	<div id="bottomnext">
		<a style="float: left" class="next" href="how-to-install-python">&larr;
			prev</a> <a style="float: right" class="next" href="python-variables">next
			&rarr;</a>
	</div>

</body>
</html>