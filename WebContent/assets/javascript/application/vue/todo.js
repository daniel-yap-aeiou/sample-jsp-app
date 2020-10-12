const initialTodoMockData = [
		{id: 999, title: "Learn Javascript", isComplete: false},
    	{id: 888, title: "Learn HTML5", isComplete: true},
    	{id: 777, title: "Learn CSS3", isComplete: false},
];

var todoApp = {
  data: function () {
  return {
    message: 'Welcome to Todo App',
    addTodoInput: '',
    lists: [],
    hasError: false
    }
  },
  computed: {
    filterLists: function(){
      return _.orderBy(this.lists, ['isComplete', false])
    }
  },
  mounted: function ()  {
  	let vm = this;
  	vm.lists = initialTodoMockData;
  },
  methods: {
    addTask: function(e){
      //e.preventDefault();
      
      if(!this.addTodoInput){
        this.hasError = true;
        return;
      }
      
      this.hasError = false;
      this.lists.push({id:this.lists.length+1, title: this.addTodoInput, isComplete: false});
      
      this.addTodoInput = '';
    },
    removeTask: function(list){
      var index = _.findIndex(this.lists, list);
      this.lists.splice(index, 1);
    },
    updateTask: function(e, list){
      e.preventDefault();
      list.title = e.target.innerText;
      e.target.blur();
    },
    completeTask: function(e, list){
      list.isComplete = !list.isComplete;
    }
    
  }
};

Vue.createApp(todoApp).mount('#todoApp')