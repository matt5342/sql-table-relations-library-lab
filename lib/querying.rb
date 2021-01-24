def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year FROM books
   LEFT JOIN series
   WHERE series.id = books.series_id and series.id = 1
   ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters
   ORDER BY(motto)
   LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, count(species) from characters
  GROUP BY (species)
  ORDER BY count(species) DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM series
  LEFT JOIN authors, subgenres
  WHERE series.author_id = authors.id and series.subgenre_id = subgenres.id
  ;"
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
  LEFT JOIN characters, authors
  WHERE series.author_id = characters.author_id
  ORDER BY characters.species DESC
  LIMIT 1;
  "
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, count(books.title) FROM character_books
  LEFT JOIN characters, books
  WHERE character_books.character_id = characters.id and character_books.book_id = books.id
  GROUP BY characters.name
  ORDER BY count(books.title) DESC, characters.name ASC
  ;"
end
