AssignmentsView = new function() {

	var tableView = null;

	var router = null ;

	var Router = Backbone.Router.extend({
		routes: {
	      "assignments/addAssignment":"addAssignment",
	      'assignments/list':'assignment'
	    },
	    addAssignment:function(){
	    	AssignmentsAddView.initialize();
	    },
	    assignment : function() {
	    	AssignmentsView.initialize();
	    }
	});

	var RowView = Backbone.View.extend({
		tagName:  "tr",
	    events: {
	      "dblclick .aname" : "edit",
	      "click .destroy"   	 : "clear",
	      "keypress .assignment-input" : "updateOnEnter",
	      "blur .assignment-input"     : "close"
	    },
	    initialize: function() {
	      _.bindAll(this, 'render', 'remove');
	      this.model.bind('change', this.render);
	      this.model.bind('destroy', this.remove);
	    },
	    render: function() {
    	  var RowViewRef = this;
    	  TemplateManager.get('assignment/assignmentItem', function(template){
    		  var compiledTemplate= $(RowViewRef.el).html(Mustache.render(template,RowViewRef.model.toJSON()));
	 	  });
	      this.nameDiv = this.$('.aname');
	      this.inputDiv = this.$('.edit');
	      this.input = this.$('.assignment-input');
	      return this;
	    },
	    edit: function() {
	      $(this.nameDiv).addClass("edit");
	      $(this.inputDiv).removeClass("edit");
	      this.input.focus();
	    },
	    close: function() {
	      this.model.save({name: this.input.val()});
	      $(this.nameDiv).removeClass("edit");
	      $(this.inputDiv).addClass("edit");
	    },
	    updateOnEnter: function(e) {
	      if (e.keyCode == 13) this.close();
	    },
	    clear: function() {
	      this.model.clear();
	    }
	});

	var TableView = Backbone.View.extend({
		    initialize: function() {
		      this.collection = AssignmentsCollection.get();
		      _.bindAll(this, 'addOne', 'addAll');
		      this.bind("change:filterType", this.filterByType);
		      this.collection.bind('add',this.addOne);
		      this.collection.bind('reset',this.addAll);
		      this.render();
		    },
		    render : function() {
		    	 this.name = this.$("#new-assignment");
		    	 this.collection.fetch();
		    },
		    addOne: function(assignment) {
		      var view = new RowView({model: assignment});
		      this.$("#assignmentsTable").append(view.render().el);
		    },
		    addAll: function() {
		    	this.$("#assignmentsTable tr").remove();
		    	this.collection.each(this.addOne);
		    }
	  });

	this.initialize = function(){
		if (router == null) {
			router = new Router();
		}
		 TemplateManager.get('assignment/assignmentContainer', function(template){
	 		 var compiledTemplate = Mustache.render(template, "{}");
	 	     $("#main_container").html(compiledTemplate);
	 	    });
		if (tableView == null) {
			  tableView = new TableView({el:"#allAssignments"});
		} else {
			tableView.setElement("#allAssignments");
			tableView.render();
		}
	};
	this.routerInitialize = function(){
		if (router == null) {
			router = new Router();
		}
	};
};