module HomeHelper
    def generate_data()
        @ingredientsList = [
            "oeuf", "beurre", "poulet", "oignon", "curry", "chocolat", 
            "farine", "lasagne", "ail", "carotte", "purée de tomate", "vin rouge", "lait", "nutella", 
            "lardons", "pâte", "crème fraîche", "mozzarella", "cheddar", "comté", "pâte à pizza",
            "gorgonzola", "pain", "steak haché", "laitue", "tomate", "thon", "tortillas", "mayonnaise",
            "chapelure", "poisson", "pomme de terre", "huile"
        ]
        @ingredientsList.each do |ingredient|
            Ingredient.create(name: ingredient)
        end

        Recipe.create(name: "Poulet au curry", ingredients: ["poulet", "curry", "oignon"])
        Recipe.create(name: "Gateau au chocolat", ingredients: ["chocolat", "farine", "oeuf", "beurre"])
        Recipe.create(name: "Lasagne bolognaise", ingredients: ["lasagne", "oignon", "ail", "carotte", "purée de tomate", "vin rouge"])
        Recipe.create(name: "Crêpe nutella", ingredients: ["lait", "beurre", "farine", "nutella", "oeuf"])
        Recipe.create(name: "Quiche lorraine", ingredients: ["lardons", "pâte", "beurre", "crème fraîche", "lait", "oeuf"])
        Recipe.create(name: "Pâtes carbonara", ingredients: ["pâte", "crème fraîche", "lardons", "oignon", "oeuf"])
        Recipe.create(name: "Pizza 4 fromages", ingredients: ["pâte à pizza", "mozzarella", "cheddar", "comté", "gorgonzola", "purée de tomate"])
        Recipe.create(name: "Cheeseburger", ingredients: ["pain", "steak haché", "laitue", "tomate", "oignon"])
        Recipe.create(name: "Wrap au thon", ingredients: ["laitue", "thon", "tortillas", "mayonnaise"])
        Recipe.create(name: "Nuggets de poulet", ingredients: ["poulet", "oeuf", "farine", "chapelure",])
        Recipe.create(name: "Fish and chips", ingredients: ["poisson", "oeuf", "pomme de terre", "farine", "huile"])

    end



end
