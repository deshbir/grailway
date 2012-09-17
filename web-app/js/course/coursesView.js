CoursesView = new function() {

	var tableView = null;

	var router = null ;

	var Router = Backbone.Router.extend({
		routes: {
	      "courses/addCourse":"addCourse",
	      'courses/list':'course'
	    },
	    addCourse:function(){
	    	CoursesAddView.initialize();
	    },
	    course : function() {
	    	CoursesView.initialize(); 
	    }
	});

	var RowView = Backbone.View.extend({
		tagName:  "tr",
	    events: {
	      "dblclick .aname" : "edit",
	      "click .destroy"   	 : "clear",
	      "keypress .course-input" : "updateOnEnter",
	      "blur .course-input"     : "close"
	    },
	    initialize: function() {
	      _.bindAll(this, 'render', 'remove');
	      this.model.bind('change', this.render);
	      this.model.bind('destroy', this.remove);
	    },
	    render: function() {
    	  var RowViewRef = this;
    	  TemplateManager.get('course/courseItem', function(template){
    		  var compiledTemplate= $(RowViewRef.el).html(Mustache.render(template,RowViewRef.model.toJSON()));
	 	  });
	      this.nameDiv = this.$('.aname');
	      this.inputDiv = this.$('.edit');
	      this.input = this.$('.course-input');
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
		      this.collection = CoursesCollection.get();
		      _.bindAll(this, 'addOne', 'addAll');
		      this.bind("change:filterType", this.filterByType);
		      this.collection.bind('add',this.addOne);
		      this.collection.bind('reset',this.addAll);
		      this.render();
		    },
		    render : function() {
		    	 this.name = this.$("#new-course");
		    	 this.collection.fetch();
		    },
		    addOne: function(course) {
		      var view = new RowView({model: course});
		      this.$("#coursesTable").append(view.render().el);
		    },
		    addAll: function() {
		    	this.$("#coursesTable tr").remove();
		    	this.collection.each(this.addOne);
		    }
	  });

	this.initialize = function(){
		if (router == null) {
			router = new Router();
		}
		TemplateManager.get('course/courseContainer', function(template){
	 		 var compiledTemplate = Mustache.render(template, "{}");
	 	     $("#main_container").html(compiledTemplate);
 	    });
		if (tableView == null) {
			  tableView = new TableView({el:"#allCourses"});
		} else {
			tableView.setElement("#allCourses");
			tableView.render();
		}
	};
	this.routerInitialize = function(){
		if (router == null) {
			router = new Router();
		}
	};
};