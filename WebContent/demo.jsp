<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:genericpage>
	<jsp:body>
		<link href="assets/css/application/todo.css" rel='stylesheet'
			type='text/css' />
		<div class="row">
			<div class="col-lg-12">
			<strong>Demo</strong>
			<p>Hello Guys, Welcome to BeginnersLuck.com</p>
			</div>
		</div>
		<div class="row" ng-app="todoApp">
			<div  class="col-lg-12">
				<h3>Todo</h3>
			</div>
   			<div class="col-lg-12" ng-controller="TodoListController as todoList">
      				<span>{{todoList.remaining()}} of {{todoList.todos.length}} remaining</span>
      					[ <a href="" ng-click="todoList.archive()">archive</a> ]
			      		<ul class="unstyled">
			        <li ng-repeat="todo in todoList.todos">
			          <label class="checkbox">
			            <input type="checkbox" ng-model="todo.done">
			            <span class="done-{{todo.done}}">{{todo.text}}</span>
			          </label>
			        </li>
			      </ul>
			      <form ng-submit="todoList.addTodo()">
			      	<div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
			        	<input class="form-control" type="text" ng-model="todoList.todoText" size="30"
									placeholder="add new todo here">
						<br/>
						<input class="btn btn-primary" type="submit" value="add">				
					</div>
			        
			      </form>	
		    </div>
		</div>
		
		<script src="assets/javascript/application/todo.js"></script>
    </jsp:body>
</t:genericpage>