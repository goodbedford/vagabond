City.create(name:"San Francisco", country:"USA", img_url:"http://buildingpowerdistribution.com/wp-content/uploads/2015/06/LEED-Platinum.jpg")
City.create(name:"London", country:"USA", img_url:"http://www.kayture.com/wp-content/uploads/2015/08/london22.jpg")
City.create(name:"Gibraltar", country:"UK", img_url:"http://www.gibraltarmusicfestival.com/wp-content/uploads/2015/02/GibSunborn.jpg")
City.create(name:"Kathmandu", country:"Nepal", img_url:"http://www.budgettravelsnepal.com/images/trips/Nepal/images/27367Kathmandu-temple-N_2427964b.jpg")
City.create(name:"Kolkata", country:"India", img_url:"http://www.kolkata.org.uk/gifs/head.jpg")
City.create(name:"Pittsburgh", country:"USA", img_url:"http://www.elllo.org/Assets/images/P0201/222-Alex-Pittsburg.jpg")


    <% flash.each do |name, msg| %>
      <% msg.each do |m| %>
        <%= content_tag :div, m, class: "#{name} error" %>
      <% end%>
    <% end %>
