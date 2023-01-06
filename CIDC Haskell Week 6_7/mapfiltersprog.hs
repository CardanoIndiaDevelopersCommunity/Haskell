{-
    Haskell Filters
    =====================
       => The point of a filter in programming is to take a section of code that matches against a certain 
        criteria and return it. Unlike map, where the map function is applied to all items in the array and 
        returned accordingly, filters in Haskell work by observing all the values it is given and deciding 
        if it qualifies to be a returned value or not.

       => If the parameters of the qualification are not met, the value is not returned. 
       Unlike mapping, when you filter something, the returned value cannot be reversed. 
       This is because it omits the unqualified values from the original list, meaning that 
       the data is lost once the filter has completed its iteration over the data set.

         filter :: (a -> Bool) -> [a] -> [a]
         => Notice here that the filtered value doesn’t create a new array. In map, we see that
         [a] transforms into [b] via the syntax [a] -> [b]. However, in a filter function, 
         [a] -> [a], which means that it replaces the original dataset completely.

     => So what does writing a filter in Haskell look like? Here is an example with an abstracted function:

        For e.g. :
        ------------------
        module FilterExample where
 ​
        isEven n = n mod 2 == 0
        filterme a = filter isEven a

        => isEven is the function that we pass into our filterme function. So when we run it:

        :l FilterExample
        filterme [1,2,3,4,5,6]

        => filterme [1,2,3,4,5,6] will return [2,4,6]. 
        The function isEven sets up the filter condition and is applied accordingly against the given values.

    Let us take a look at another filter function:
    ------------------------------------------------------

        module FilterExample2 where
        ​
        filterme a = filter (==3) a

       => This filterme function takes one parameter and applies the conditional check of (==3) against 
       every value that gets passed through. So when we run the following:

        :l FilterExample2
        filterme [1,2,3,4,5,6,5,4,3,2,1]
        => The expected return result of filterme [1,2,3,4,5,6,5,4,3,2,1] will be [3,3].

       => The main takeaway from how filtering works in Haskell is that it needs to evaluate to true 
        in order to be passed into the returned result. This means that the filter
        function must evaluate to a Boolean.
-}