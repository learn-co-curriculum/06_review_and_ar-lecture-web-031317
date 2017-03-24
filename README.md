## Challenges

### Ruby
1. Let's revisit the Star Wars API Project that we did a few weeks ago. A character has many films, a film has many characters. How would you model this out in plain old ruby? What models would you need?
  + Single Source of Truth
  + What methods can we add to our models to show this association
  + film = Film.new('A New Hope')
    character = Character.new('Leia Organa')
    film.add_character( character )
    film.characters #=> [character]
    character.films #=> [film]

```ruby
puts "Enter film name"
film_name = gets.strip
film = Film.find_by_title(film_name)
puts "Enter Character name"
character_name = gets.strip
character = Character.find_by_name(character_name)
puts "Press 1 to add character to the film"
if gets.strip == "1"
  film.add_character(character)
end
```

### SQL

2. How would you model this out in SQL? What tables would you need? What keys would be on those tables?

characters
id | name |
films
id | title
appearances
id | character_id | film_id


3. What SQL would fire when trying to select all of a characters films?

1 | Leia Organa

SELECT * FROM films
INNER JOIN appearances
ON appearances.film_id = films.id
WHERE appearances.character_id = ?
