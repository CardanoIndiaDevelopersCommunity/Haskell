{-
    Maybe a
   ================
    We’ll begin with an example. This example will be a simplified version of what a real-world 
    Haskell function to do this task might look like, simplified just enough to allow us to focus 
    on the points we care about.

    We need a function that can "lookup" a user record and greet the user when they log in. 
    We can make a simplified model of our “user database” with an association list – that is, a list of tuples.

    lookup :: Eq a => a -> [(a, b)] -> Maybe b
    -----------------------------------------------
The lookup function is going to take one argument of the same type as our “key”, and so that type needs 
to be a member of the Eq typeclass because it needs to be able to tell that an a value that 
we input is equal (or not) to some a value in the association list. Our a values are Integers according to 
the type we have given our database, and you can check to make sure those have an Eq instance.

The second argument to lookup is a list of tuples – which will, in this case, be our database – 
and it will return a Maybe b value. That is, if it finds a record with the given key, 
    it will return the String value that is associated with that key, wrapped in a Just. 
    If it doesn’t find a record with that key, it will return Nothing.

    Load the file with the database list into your REPL so we can try it out.

        ghci> lookup 2 database
                Just "Chris"

        ghci> lookup 5 database
                Nothing

 Using Nothing rather than throwing an exception when there is no value at that location is nice, 
 but it leaves us with the problem of how to apply a function to whatever value we might retrieve. 
 Let’s say, for example, that we want to greet the user whose record is at that location, 
 so we plan to concatenate a greeting with their name. We want something like this:

    greetUser :: Integer -> Maybe String
    greetUser record =
    ("Hello, " ++) (lookup record database)

This won’t compile because the second argument of the ++ function must be a String and 
we’ve given it a Maybe String. So, we need to invent something that can work around the Maybe constructor somehow.
-}


database :: [(Integer, String)]
database = [(1, "Debasis"),
            (2, "Sohan"),
            (3, "Biswajit"),
            (4, "Tusar"),
            (5, "Arindam"),
            (6, "Rajeeb"),
            (7, "Satya")]

   
