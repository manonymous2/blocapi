
var blocmetrics = {

  foo: function() {
    alert("foo")
  },

 init: function() {
    s = this.settings;
    this.bindUIActions();
  },



  track: function(a,b) {
    $.ajax({	
	  type: "POST",
	  url: "/events",
	  data: {"event": {"event_name": a} }
	})
  }

}


// blocmetrics.track("some event name", {property_1: "some value", property_2: "some other value"})

