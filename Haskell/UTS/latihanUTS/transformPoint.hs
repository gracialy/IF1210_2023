transformPoint :: (Float, Float) -> (Float, Float) -> Bool -> Bool -> (Float, Float, Int)
transformPoint (x,y) (dx,dy) mirrorX mirrorY =
    let
        tx = (if mirrorX then (-1) else 1)*(x+dx)
        ty = (if mirrorY then (-1) else 1)*(y+dy)
        kw = if tx==0 && ty==0 then 0
             else if tx>0 && ty>0 then 1
             else if tx<0 && ty>0 then 2
             else if tx<0 && ty<0 then 3
             else 4
    in (tx, ty, kw)

main :: IO()
main = print (transformPoint (2,3) (2,3) True True)