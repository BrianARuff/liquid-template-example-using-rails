# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Page.delete_all

Page.create(id: 1, user: "Rich", template: %{
  Hello {{ user }}, here is your shopping list.
  <ul>
    {% for item in list %}
      <li>{{ item.name }}</li>
    {% endfor %}
  </ul>
}

)

Page.create(id: 2, user: "Bob", template: %{
  What is up my man?!? Here is your shopping list.
  <ul>
    {% for item in list %}
      <li>{{ item.name }}</li>
    {% endfor %}
  </ul>
}
)

Page.create(id: 3, user: "Chris", template: %{
  HTTP 200:  Shopping List Found

  Items in your list:
  <ul>
    {% for item in list %}
      <li>{{ item.name }}</li>
    {% endfor %}
  </ul>
}

)