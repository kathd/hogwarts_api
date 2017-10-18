/* global Vue */
document.addEventListener("DOMContentLoaded", function(event) { 
  var app = new Vue({
    el: '#app',
    data: {
      students: [],
      newStudentFirstName: "",
      newStudentLastName: "",
      newStudentOriginalHouse: "",
      errors: []

    },
    mounted: function() {
      // $.get('/api/v2/students.json', function(result) {
      //   this.students = result;
      // }.bind(this));

      Rails.ajax({
        url: "/api/v1/students.json",
        type: "GET",
        success: function(response) {
          this.students = response;
        }.bind(this)
      });

    },
    methods: {
      addStudent: function() {
        var params = {
          first_name: this.newStudentFirstName,
          last_name: this.newStudentLastName,
          house: this.newStudentOriginalHouse,
        };
        $.post('/api/v1/students.json', params, function(result) {
          this.students.push(result);
          this.newStudentFirstName = '';
          this.newStudentLastName = '';
          this.newStudentOriginalHouse = '';
        }.bind(this)).fail(function(response) {
          this.errors = response.responseJSON.errors;
        }.bind(this));
      }
    },
    computed: {

    }
  });
});