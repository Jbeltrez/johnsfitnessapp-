


ok so a user signs in, 
we take them to their show page 
their show page has what ?
the option to create a new workout and to see your current scheduled workouts
ok great - if you want to get cute you can offer a welcome message 
the workouts index page will be a collection of all workouts listed out by date 

also add the migration that a user has many categories through workouts

the workout index page should have the name of the workout, the date, the type and all of its components listed and 
an index of all of these we should be able to link to that workouts show, edit, and delete options write from the index page 

<%# <% if flash[:errors] %>
      <%# <p><%= pluralize(flash[:errors].count, "error")%> %>
      <%# <p><%= flash[:errors] %></p> %>
    <%# <% end %> %> %>

     <% if logged_in? %>
        <%# <%= link_to "My Workouts", my_workouts_path %> %>
        <%= link_to "Logout",  logout_path %>
      <% else %>
        <%= link_to "Login",  login_path %>
        <%= link_to "Sign up", new_user_path %>
      <% end %>