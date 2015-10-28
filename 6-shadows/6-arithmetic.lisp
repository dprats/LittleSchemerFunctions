"An arithmetic expression is either an atom 
or two arithmetic expressions combined by +, x, or UP"

1. (quote a) == a

2. (quote +) == the atom +, not the operation +

3. (quote x) == the atom x, not the operation x

4. Is (eq? (quote a) y) true or false? Where y is a.
- true

5. (eq? x y) true or false? where x = a, y = a 
- true

6. Is (n + 3) an arithmetic expression? No, since it has parantheses aroun N + 3

7. 