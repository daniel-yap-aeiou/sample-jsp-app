<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:genericpage>
	<jsp:body>
		<link href="assets/css/application/vue/todo.css" rel='stylesheet'
			type='text/css' />
	
		<div class="row">
        	<div class="col-lg-12">
        	<p>Hi I'm the heart of the message</p>
        	</div>
        </div>
        
        <div class="row">
        	<div class="col-lg-12" id="todoApp">
        	 	<p>{{ message }}</p>
        	 	
        	 	<form name="todo-form" method="post" action=""
					v-on:submit.prevent="addTask">
				    <input name="add-todo" v-model="addTodoInput" type="text"
										v-bind:class="{error: hasError}" />
				    <button type="submit">Add</button>
				  </form>
				  
				  <div class="todo-lists" v-if="lists.length">
				    <h3>My Todo Tasks</h3>
				    <ul>
				      <li v-for="(list, index) in filterLists" :key="list.id">
				        <input type="checkbox" v-bind:id="'todo-' + index"
											v-on:change="completeTask($event, list)"
											v-bind:checked="list.isComplete" />
				        <span class="title" contenteditable="true"
											v-on:keydown.enter="updateTask($event, list)"
											v-on:blur="updateTask($event, list)"
											v-bind:class="{completed: list.isComplete}">{{list.title}}</span> 
				        <span class="remove" v-on:click="removeTask(list)">x</span>
										</li>
				    </ul>
				  </div>
        	</div>
        </div>
        
        
    
    	<script src="assets/javascript/lodash.min.js"></script>
    	<script src="assets/javascript/vue/vue.min.js"></script>
        <script src="assets/javascript/application/vue/todo.js"></script>
    </jsp:body>
</t:genericpage>