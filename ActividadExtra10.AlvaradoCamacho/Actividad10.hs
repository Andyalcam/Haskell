module Actividad10 where

type Indice = Int

data LP = T | F | Var Indice
		| Neg LP
		| And LP LP 
		| Or LP LP
		| Imp LP LP 
		deriving (Eq, Show)

quitaImp :: LP -> LP
quitaImp T = T
quitaImp F = F 
quitaImp (Var x) = (Var x)
quitaImp (Neg alpha) = Neg (quitaImp alpha)
quitaImp (And alpha beta) = And (quitaImp alpha) (quitaImp beta)
quitaImp (Or alpha beta) = Or (quitaImp alpha) (quitaImp beta)
quitaImp (Imp alpha beta) = Or (Neg (quitaImp alpha)) (quitaImp beta)
		
numOp :: LP -> Int
numOp T = 0
numOp F = 0
numOp (Var x) = 0
numOp (Neg alpha) = 1 + (numOp alpha)
numOp (And alpha beta) = 1 + (numOp alpha) + (numOp beta)
numOp (Or alpha beta) = 1 + (numOp alpha) + (numOp beta)
numOp (Imp alpha beta) = 1 + (numOp alpha) + (numOp beta)

numVar :: LP -> Int
numVar T = 0
numVar F = 0
numVar (Var x) = 1
numVar (Neg alpha) = (numVar alpha)
numVar (And alpha beta) = (numVar alpha)+(numVar beta)
numVar (Or alpha beta) = (numVar alpha)+(numVar beta)
numVar (Imp alpha beta) = (numVar alpha)+(numVar beta)