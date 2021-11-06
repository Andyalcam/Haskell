module Test
 where
import Actividad10
p1 = numOp (Or (Var 1) (Neg (And (Var 2) (Var 3))))
p2 = numOp (Imp (And (Var 1) (Var 4)) (Or (Neg(Var 3)) (And (Var 4) (Var 5)))) 
p3 = numVar (Or (Var 1) (Neg (And (Var 2) (Var 3))))
p4 = numVar (Imp (And (Var 1) (Var 4)) (Or (Neg(Var 3)) (And (Var 4) (Var 5)))) 
--p3 = conjuntoPot [1,2,3]
--p4 = conjuntoPot [2,4,6,8,10]
--p5 = esTau (Or(Neg (Var 1)) (Var 1))
--p6 = esTau (Imp (Or (Neg(Var 1)) (Var 3)) (Or (And (Var 4) (Var 5)) (Var 6)))

