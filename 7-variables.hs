-- Let binding defines a local variable (can't change value)
complicatedNine =
    let a = 2
    in (a * a) + 5 -- in defines a sub-expression where the let variable can be used
complicatedEight =
    let a = 5
        b = 3 -- multiple let variable need aligned indentation
    in a + b

-- Where binding ~ Similar to let but can only be used with a function definition
fancyNine =
    (a * a) + 5
    where a = 2
fancyEight =
    a + b
    where a = 5
          b = 3