[QueryItem="Example-01"]
PREFIX : <http://protege.stanford.edu/ontologies/grocery-ontology/>
SELECT * WHERE {
   ?x a :WalkersShortbreadItem;
      :productName ?productName;
      :price ?price;
      :isSoldBy ?store .
}

[QueryItem="Example-02"]
PREFIX : <http://protege.stanford.edu/ontologies/grocery-ontology/>
SELECT * WHERE {
   ?x a :WalkersShortbreadItem; :price ?price; :isSoldByStore ?store.
   ?store a :Safeway; :storeName ?storeName .
}

[QueryItem="Example-03"]
PREFIX : <http://protege.stanford.edu/ontologies/grocery-ontology/>
SELECT * WHERE {
   ?x a :GroceryItem; :productName ?name; :price ?price.
}

[QueryItem="Example-04"]
PREFIX : <http://protege.stanford.edu/ontologies/grocery-ontology/>
SELECT * WHERE {
   ?x a :GroceryItem; :productName ?productName; :price ?price .
   FILTER ( ?price < 4.00 )
}

[QueryItem="Example-05"]
PREFIX : <http://protege.stanford.edu/ontologies/grocery-ontology/>
SELECT * WHERE {
   ?x a :GroceryItem; :productName ?name; :price ?price; :isSoldByStore [ a :Safeway ] .
   FILTER ( ?price < 4.00 )
}
