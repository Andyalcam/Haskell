toma :: (Num i, Ord i) => i -> [a] -> [a]
toma n _
	| n <= 0  = []
toma _ []     = []
toma n (x:xs) = x : toma (n-1) xs

quita :: (Num i, Ord i) => i -> [a] -> [a]
quita n (x:xs)
	| n <= 0 = (x:xs)
	| otherwise = quita (n-1) (xs)

eleem :: (Eq a) => a -> [a] -> Bool
eleem a [] = False
eleem a (x:xs)
	| a == x = True
	| otherwise = a `eleem` xs

replica :: (Num n, Ord n) => (a,n) -> [a]
replica (x,y)
	| y <= 0   = []
	| otherwise = x:replica (x, y-1)


laast :: [a] -> [a]
laast [x] = [x]
laast (x:xs) = laast (xs) 


elast :: [a] -> [a]
elast [x] = []
elast (x:xs) = x : elast (xs)