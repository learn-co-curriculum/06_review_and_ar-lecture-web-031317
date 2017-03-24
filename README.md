## Challenges

1. We've created a migration for characters
2. Create one for films and appearances, such that an appearance belongs to a film and belongs to a character
3. Define methods on our models to reflect that association

```
leia = Character.first
leia.films #=> [of films]
film = film.first
film.characters #=> [ characters ]
```
