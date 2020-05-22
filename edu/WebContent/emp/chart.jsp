<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type="text/javascript">

    
      // Load the Visualization API and the corechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table,
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

        // Create the data table.
        var data = new google.visualization.DataTable();
        data.addColumn('string', '부서');
        data.addColumn('number', '급여');
        
        //ajax 호출
        var list= getChartDataJquery();
        data.addRows(list);

        // Set chart options
        var options = {'title':'콤비네이션 피자',
                       'width':400,
                       'height':300};

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
      
      function getCharDataJquery(){
    	  var list=[];
    	  $
    	  
    	  return list;
      }
      function getChartData() {
    	  var list=[];
  		//1. XHR객체생성
  		var xhr = new XMLHttpRequest();
  		//2. 콜백함수 지정
  		xhr.onreadystatechange = function() {
  			if (xhr.readyState == 4 && xhr.status == 200) {
  				var obj = JSON.parse(xhr.responseText);
  				//[{department_id:""},{cnt:""}]    ->    [[],[]]\
  				for(i=0; i<obj.length; i++){
  					var temp = [];
   					temp.push(obj[i].department_name);
   					temp.push(obj[i].salary);
  					list.push(temp); 
  					//list.push([obj[i].department_id, obj[i].cnt ]); 위에것과 같음
  				}
  			}
  		}
  		//3. 서버 연결	
  		xhr.open("get", "../GetEmpCnt.do" , false); //id속성이 있으면 id.value로 추가해줘도된다.
  		//4. server 전송
  		xhr.send();
  		return list;
  	}
    </script>
  </head>

  <body>
    <!--Div that will hold the pie chart-->
    <div id="chart_div"></div>
  </body>
</html>