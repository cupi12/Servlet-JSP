<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>json.jsp</title>
<script>
var xhr = new XMLHttpRequest();
//JSON : 자바스크립트에서 객체를 표현하는 표기법(방법) {}, []
var emp = {employee_id:100, first_name:"Big Snoop", last_name:"dog"};
document.write("last_name : " + emp.last_name);

var arr = [
	{employee_id:100, first_name:"Big Snoop", last_name:"dog"},
	{employee_id:101, first_name:"Emi", last_name:"nem"},
	{employee_id:102, first_name:"conan", last_name:"cat"}

]
document.write("<br>"+arr[0].employee_id);

var emp1 = {emp_id:100, name:"이순신", hobby:["read","coding","study"]};
document.write("<br>emp1.hobby : "+ emp1.hobby[0] + "<br>");

var emp2 = {dept:"개발", emps:[
	{id:200,name:"Snoop Dog", hobby:["read","ski","hi"]},
	{id:201,name:"Beegie"},
	{id:202,name:"2pak"}
]}
//사원 이름만 출력
for(i=0; i<emp2.emps.length; i++){
	document.write("<br> 사원 이름만 출력" +emp2.emps[i].name +"<br>");
};

//첫번째 사원의 두번째 취미 출력
document.write("<br>첫번째 사원의 두번째 취미 출력 : "+ emp2.emps[0].hobby[1]);

//object=>String
var str = JSON.stringify(emp);
console.log(emp);
console.log(str);
//String => object
var emp3 = JSON.parse(str); 

var a = '{"f1":1, "f2":2}';  //String
var o = JSON.parse(a);   //Object
document.write("<br>Object Test : "+o.f1)
</script>
</head>
<body>

</body>
</html>