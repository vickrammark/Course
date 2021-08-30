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
<h1 class="h1">Python Literals</h1>
<p>Python Literals can be defined as data that is given in a variable or constant.</p>
<p>Python supports the following literals:</p>
<h3 class="h3">1. String literals:</h3>
<p>String literals can be formed by enclosing a text in the quotes. We can use both single as well as double quotes to create a string.</p>
<p><strong>Example:</strong></p>
<div class="codeblock"><textarea name="code" class="python">
"Aman" , '12345'
</textarea></div>
<p><strong>Types of Strings:</strong></p>
<p>There are two types of Strings supported in Python:</p>
<p><strong>a) Single-line String</strong>- Strings that are terminated within a single-line are known as Single line Strings.</p>
<p><strong>Example:</strong></p>
<div class="codeblock"><textarea name="code" class="python">
text1='hello'
</textarea></div>
<p><strong>b) Multi-line String -</strong> A piece of text that is written in multiple lines is known as multiple lines string.</p>
<p>There are two ways to create multiline strings:</p>
<p><strong>1) Adding black slash at the end of each line.</strong></p>
<p><strong>Example:</strong></p>
<div class="codeblock"><textarea name="code" class="python">
text1='hello\  
user'  
print(text1)
</textarea></div>
<div class="codeblock3"><pre>'hellouser'  
</pre></div>
<p><strong>2) Using triple quotation marks:-</strong></p>
<p><strong>Example:</strong></p>
<div class="codeblock"><textarea name="code" class="python">
str2='''welcome 
to 
SSSIT'''  
print str2 
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>welcome  
to  
SSSIT  
</pre></div>
<h3 class="h3">II. Numeric literals:</h3>
<p>Numeric Literals are immutable. Numeric literals can belong to following four different numerical types.</p>
<table class="alt">
<caption></caption>
<tr><th scope="col">Int(signed integers)</th><th scope="col">Long(long integers)</th><th scope="col">float(floating point)</th><th scope="col">Complex(complex)</th></tr>
<tr><td>Numbers( can be both positive and negative) with no fractional part.eg: 100</td><td>Integers of unlimited size followed by lowercase or uppercase L eg: 87032845L</td><td>Real numbers with both integer and fractional part eg: -26.2</td><td>In the form of a+bj where a forms the real part and b forms the imaginary part of the complex number. eg: 3.14j</td></tr>
</table>
<p><strong>Example - Numeric Literals</strong></p>
<div class="codeblock"><textarea name="code" class="python">
x = 0b10100 #Binary Literals
y = 100 #Decimal Literal 
z = 0o215 #Octal Literal
u = 0x12d #Hexadecimal Literal

#Float Literal
float_1 = 100.5 
float_2 = 1.5e2

#Complex Literal 
a = 5+3.14j

print(x, y, z, u)
print(float_1, float_2)
print(a, a.imag, a.real)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>20 100 141 301
100.5 150.0
(5+3.14j) 3.14 5.0
</pre></div>
<h3 class="h3">III. Boolean literals:</h3>
<p>A Boolean literal can have any of the two values: True or False.</p>
<p><strong>Example - Boolean Literals</strong></p>
<div class="codeblock"><textarea name="code" class="python">
x = (1 == True)
y = (2 == False)
z = (3 == True)
a = True + 10
b = False + 10

print("x is", x)
print("y is", y)
print("z is", z)
print("a:", a)
print("b:", b)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>x is True
y is False
z is False
a: 11
b: 10
</pre></div>
<h3 class="h3">IV. Special literals.</h3>
<p>Python contains one special literal i.e., <strong>None.</strong></p>
<p>None is used to specify to that field that is not created. It is also used for the end of lists in Python.</p>
<p><strong>Example - Special Literals</strong> </p>
<div class="codeblock"><textarea name="code" class="python">
val1=10  
val2=None  
print(val1)   
print(val2)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>10
None
</pre></div>
<h3 class="h3">V. Literal Collections.</h3>
<p>Python provides the four types of literal collection such as List literals, Tuple literals, Dict literals, and Set literals.</p>
<p><strong>List:</strong></p>
<ul class="points">
<li>List contains items of different data types. Lists are mutable i.e., modifiable.</li>
<li>The values stored in List are separated by comma(,) and enclosed within square brackets([]). We can store different types of data in a List.</li>
</ul>
<p><strong>Example - List literals</strong></p>
<div class="codeblock"><textarea name="code" class="python">
list=['John',678,20.4,'Peter']  
list1=[456,'Andrew']  
print(list)  
print(list + list1)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>['John', 678, 20.4, 'Peter']
['John', 678, 20.4, 'Peter', 456, 'Andrew']
</pre></div>
<p><strong>Dictionary:</strong></p>
<ul class="points">
<li>Python dictionary stores the data in the key-value pair.</li>
<li>It is enclosed by curly-braces {} and each pair is separated by the commas(,).</li>
</ul>
<p><strong>Example</strong></p>
<div class="codeblock"><textarea name="code" class="python">
dict = {'name': 'Pater', 'Age':18,'Roll_nu':101}
print(dict)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>{'name': 'Pater', 'Age': 18, 'Roll_nu': 101}
</pre></div>
<p><strong>Tuple:</strong></p>
<ul class="points">
<li>Python tuple is a collection of different data-type. It is immutable which means it cannot be modified after creation.</li>
<li>It is enclosed by the parentheses () and each element is separated by the comma(,).</li>
</ul>
<p><strong>Example</strong></p>
<div class="codeblock"><textarea name="code" class="python">
tup = (10,20,"Dev",[2,3,4])
print(tup)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>(10, 20, 'Dev', [2, 3, 4])
</pre></div>
<p><strong>Set:</strong></p>
<ul class="points">
<li>Python set is the collection of the unordered dataset.</li>
<li>It is enclosed by the {} and each element is separated by the comma(,).</li>
</ul>
<p><strong>Example: - Set Literals</strong></p>
<div class="codeblock"><textarea name="code" class="python">
set = {'apple','grapes','guava','papaya'}
print(set)
</textarea></div>
<p><strong>Output:</strong></p>
<div class="codeblock3"><pre>{'guava', 'apple', 'papaya', 'grapes'}
</pre></div>
<hr />
<div class="nexttopicdiv">
<span class="nexttopictext">Next Topic</span><span class="nexttopiclink"><a href="python-operators">Python Operators</a></span>
</div>

<br /><br />
<div id="bottomnext">
<a style="float:left" class="next" href="python-keywords">&larr; prev</a>
<a style="float:right" class="next" href="python-operators">next &rarr;</a>
</div>
<br /><br />
</td></tr>
</table>
</div>
<hr class="hrhomebox" />
<div><img class="lazyload" data-src="https://static.javatpoint.com/images/youtube-32.png" style="vertical-align:middle;" alt="Youtube" />
<span class="h3" style="vertical-align:middle;font-size:22px"> For Videos Join Our Youtube Channel: <a href="https://bit.ly/2FOeX6S" target="_blank"> Join Now</a></span>
</div>
</div>
</body>
</html>