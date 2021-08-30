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
		<h1 class="h1">Python Operators</h1>
		<p>The operator can be defined as a symbol which is responsible
			for a particular operation between two operands. Operators are the
			pillars of a program on which the logic is built in a specific
			programming language. Python provides a variety of operators, which
			are described as follows.</p>
		<ul class="points">
			<li>Arithmetic operators</li>
			<li>Comparison operators</li>
			<li>Assignment Operators</li>
			<li>Logical Operators</li>
			<li>Bitwise Operators</li>
			<li>Membership Operators</li>
			<li>Identity Operators</li>
		</ul>
		<h2 class="h2">Arithmetic Operators</h2>
		<p>Arithmetic operators are used to perform arithmetic operations
			between two operands. It includes + (addition), - (subtraction),
			*(multiplication), /(divide), %(reminder), //(floor division), and
			exponent (**) operators.</p>
		<p>Consider the following table for a detailed explanation of
			arithmetic operators.</p>
		<table class="alt">
		<caption></caption>
		<caption></caption>
			<tr>
				<th scope="col" >Operator</th>
				<th scope="col">Description</th>
			</tr>
			<tr>
				<td><strong>+ (Addition)</strong></td>
				<td>It is used to add two operands. For example, if a = 20, b =
					10 => a+b = 30</td>
			</tr>
			<tr>
				<td><strong>- (Subtraction)</strong></td>
				<td>It is used to subtract the second operand from the first
					operand. If the first operand is less than the second operand, the
					value results negative. For example, if a = 20, b = 10 => a - b =
					10</td>
			</tr>
			<tr>
				<td><strong>/ (divide)</strong></td>
				<td>It returns the quotient after dividing the first operand by
					the second operand. For example, if a = 20, b = 10 => a/b = 2.0</td>
			</tr>
			<tr>
				<td><strong>* (Multiplication)</strong></td>
				<td>It is used to multiply one operand with the other. For
					example, if a = 20, b = 10 => a * b = 200</td>
			</tr>
			<tr>
				<td><strong>% (reminder)</strong></td>
				<td>It returns the reminder after dividing the first operand by
					the second operand. For example, if a = 20, b = 10 => a%b = 0</td>
			</tr>
			<tr>
				<td><strong>** (Exponent)</strong></td>
				<td>It is an exponent operator represented as it calculates the
					first operand power to the second operand.</td>
			</tr>
			<tr>
				<td><strong>// (Floor division)</strong></td>
				<td>It gives the floor value of the quotient produced by
					dividing the two operands.</td>
			</tr>
		</table>
		<h2 class="h2">Comparison operator</h2>
		<p>Comparison operators are used to comparing the value of the two
			operands and returns Boolean true or false accordingly. The
			comparison operators are described in the following table.</p>
		<table class="alt">
		<caption></caption>
			<tr>
				<th scope="col">Operator</th>
				<th scope="col">Description</th>
			</tr>
			<tr>
				<td>==</td>
				<td>If the value of two operands is equal, then the condition
					becomes true.</td>
			</tr>
			<tr>
				<td>!=</td>
				<td>If the value of two operands is not equal, then the
					condition becomes true.</td>
			</tr>
			<tr>
				<td><=</td>
				<td>If the first operand is less than or equal to the second
					operand, then the condition becomes true.</td>
			</tr>
			<tr>
				<td>>=</td>
				<td>If the first operand is greater than or equal to the second
					operand, then the condition becomes true.</td>
			</tr>
			<tr>
				<td>></td>
				<td>If the first operand is greater than the second operand,
					then the condition becomes true.</td>
			</tr>
			<tr>
				<td><strong><</strong></td>
				<td>If the first operand is less than the second operand, then
					the condition becomes true.</td>
			</tr>
		</table>
		<h2 class="h2">Assignment Operators</h2>
		<p>The assignment operators are used to assign the value of the
			right expression to the left operand. The assignment operators are
			described in the following table.</p>
		<table class="alt">
		<caption></caption>
			<tr>
				<th scope="col">Operator</th>
				<th scope="col">Description</th>
			</tr>
			<tr>
				<td>=</td>
				<td>It assigns the value of the right expression to the left
					operand.</td>
			</tr>
			<tr>
				<td>+=</td>
				<td>It increases the value of the left operand by the value of
					the right operand and assigns the modified value back to left
					operand. For example, if a = 10, b = 20 => a+ = b will be equal to
					a = a+ b and therefore, a = 30.</td>
			</tr>
			<tr>
				<td>-=</td>
				<td>It decreases the value of the left operand by the value of
					the right operand and assigns the modified value back to left
					operand. For example, if a = 20, b = 10 => a- = b will be equal to
					a = a- b and therefore, a = 10.</td>
			</tr>
			<tr>
				<td>*=</td>
				<td>It multiplies the value of the left operand by the value of
					the right operand and assigns the modified value back to then the
					left operand. For example, if a = 10, b = 20 => a* = b will be
					equal to a = a* b and therefore, a = 200.</td>
			</tr>
			<tr>
				<td>%=</td>
				<td>It divides the value of the left operand by the value of
					the right operand and assigns the reminder back to the left
					operand. For example, if a = 20, b = 10 => a % = b will be equal to
					a = a % b and therefore, a = 0.</td>
			</tr>
			<tr>
				<td>**=</td>
				<td>a**=b will be equal to a=a**b, for example, if a = 4, b =2,
					a**=b will assign 4**2 = 16 to a.</td>
			</tr>
			<tr>
				<td>//=</td>
				<td>A//=b will be equal to a = a// b, for example, if a = 4, b
					= 3, a//=b will assign 4//3 = 1 to a.</td>
			</tr>
		</table>
		<h2 class="h2">Bitwise Operators</h2>
		<p>The bitwise operators perform bit by bit operation on the
			values of the two operands. Consider the following example.</p>
		<p>
			<strong>For example,</strong>
		</p>
		<div class="codeblock">
			<textarea name="code" class="python">
if a = 7 
   b = 6   
then, binary (a) = 0111  
    binary (b) = 0110  
  
hence, a & b = 0011  
      a | b = 0111  
             a ^ b = 0100  
       ~ a = 1000
</textarea>
		</div>
		<br>
		<table class="alt">
		<caption></caption>
			<tr>
				<th scope="col">Operator</th>
				<th scope="col">Description</th>
			</tr>
			<tr>
				<td>& (binary and)</td>
				<td>If both the bits at the same place in two operands are 1,
					then 1 is copied to the result. Otherwise, 0 is copied.</td>
			</tr>
			<tr>
				<td>| (binary or)</td>
				<td>The resulting bit will be 0 if both the bits are zero;
					otherwise, the resulting bit will be 1.</td>
			</tr>
			<tr>
				<td>^ (binary xor)</td>
				<td>The resulting bit will be 1 if both the bits are different;
					otherwise, the resulting bit will be 0.</td>
			</tr>
			<tr>
				<td>~ (negation)</td>
				<td>It calculates the negation of each bit of the operand,
					i.e., if the bit is 0, the resulting bit will be 1 and vice versa.</td>
			</tr>
			<tr>
				<td><< (left shift)</td>
				<td>The left operand value is moved left by the number of bits
					present in the right operand.</td>
			</tr>
			<tr>
				<td>>> (right shift)</td>
				<td>The left operand is moved right by the number of bits
					present in the right operand.</td>
			</tr>
		</table>
		<h2 class="h2">Logical Operators</h2>
		<p>The logical operators are used primarily in the expression
			evaluation to make a decision. Python supports the following logical
			operators.</p>
		<table class="alt">
		<caption></caption>
		<caption></caption>
			<tr>
				<th scope="col">Operator</th>
				<th scope="col">Description</th>
			</tr>
			<tr>
				<td>and</td>
				<td>If both the expression are true, then the condition will be
					true. If a and b are the two expressions, a &rarr; true, b &rarr;
					true => a and b &rarr; true.</td>
			</tr>
			<tr>
				<td>or</td>
				<td>If one of the expressions is true, then the condition will
					be true. If a and b are the two expressions, a &rarr; true, b
					&rarr; false => a or b &rarr; true.</td>
			</tr>
			<tr>
				<td>not</td>
				<td>If an expression <strong>a</strong> is true, then not (a)
					will be false and vice versa.
				</td>
			</tr>
		</table>
		<h2 class="h2">Membership Operators</h2>
		<p>Python membership operators are used to check the membership of
			value inside a Python data structure. If the value is present in the
			data structure, then the resulting value is true otherwise it returns
			false.</p>
		<table class="alt">
		<caption></caption>
		<caption></caption>
			<tr>
				<th scope="col">Operator</th>
				<th scope="col">Description</th>
			</tr>
			<tr>
				<td>in</td>
				<td>It is evaluated to be true if the first operand is found in
					the second operand (list, tuple, or dictionary).</td>
			</tr>
			<tr>
				<td>not in</td>
				<td>It is evaluated to be true if the first operand is not
					found in the second operand (list, tuple, or dictionary).</td>
			</tr>
		</table>
		<h2 class="h2">Identity Operators</h2>
		<p>The identity operators are used to decide whether an element
			certain class or type.</p>
		<table class="alt">
		<caption></caption>
		<caption></caption>
			<tr>
				<th scope="col">Operator</th>
				<th scope="col">Description</th>
			</tr>
			<tr>
				<td>is</td>
				<td>It is evaluated to be true if the reference present at both
					sides point to the same object.</td>
			</tr>
			<tr>
				<td>is not</td>
				<td>It is evaluated to be true if the reference present at both
					sides do not point to the same object.</td>
			</tr>
		</table>
		<h2 class="h2">Operator Precedence</h2>
		<p>The precedence of the operators is essential to find out since
			it enables us to know which operator should be evaluated first. The
			precedence table of the operators in Python is given below.</p>
		<table class="alt">
		<caption></caption>
			<tr>
				<th scope="col">Operator</th>
				<th scope="col">Description</th>
			</tr>
			<tr>
				<td>**</td>
				<td>The exponent operator is given priority over all the others
					used in the expression.</td>
			</tr>
			<tr>
				<td>~ + -</td>
				<td>The negation, unary plus, and minus.</td>
			</tr>
			<tr>
				<td>* / % //</td>
				<td>The multiplication, divide, modules, reminder, and floor
					division.</td>
			</tr>
			<tr>
				<td>+ -</td>
				<td>Binary plus, and minus</td>
			</tr>
			<tr>
				<td>>> <<</td>
				<td>Left shift. and right shift</td>
			</tr>
			<tr>
				<td>&</td>
				<td>Binary and.</td>
			</tr>
			<tr>
				<td>^ |</td>
				<td>Binary xor, and or</td>
			</tr>
			<tr>
				<td><= < > >=</td>
				<td>Comparison operators (less than, less than equal to,
					greater than, greater then equal to).</td>
			</tr>
			<tr>
				<td><> == !=</td>
				<td>Equality operators.</td>
			</tr>
			<tr>
				<td>= %= /= //= -= +=<br> *= **=
				</td>
				<td>Assignment operators</td>
			</tr>
			<tr>
				<td>is is not</td>
				<td>Identity operators</td>
			</tr>
			<tr>
				<td>in not in</td>
				<td>Membership operators</td>
			</tr>
			<tr>
				<td>not or and</td>
				<td>Logical operators</td>
			</tr>
		</table>
		<hr />
		<div class="nexttopicdiv">
			<span class="nexttopictext">Next Topic</span><span
				class="nexttopiclink"><a href="python-comments">Python
					Comments</a></span>
		</div>

		<br />
		<br />
		<div id="bottomnext">
			<a style="float: left" class="next" href="python-literals">&larr;
				prev</a> <a style="float: right" class="next" href="python-comments">next
				&rarr;</a>
		</div>
	</div>
</body>
</html>