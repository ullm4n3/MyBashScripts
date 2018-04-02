#!/bin/bash

for a in a b c d e f g h i j k l m n o p q r s t u v w x y z
do
for b in a b c d e f g h i j k l m n o p q r s t u v w x y z
do
for c in a b c d e f g h i j k l m n o p q r s t u v w x y z
do
for d in a b c d e f g h i j k l m n o p q r s t u v w x y z
do
for e in a b c d e f g h i j k l m n o p q r s t u v w x y z
do
for f in a b c d e f g h i j k l m n o p q r s t u v w x y z
do
for g in a b c d e f g h i j k l m n o p q r s t u v w x y z
do
for h in a b c d e f g h i j k l m n o p q r s t u v w x y z
do
echo $a$b$c$d$e$f$g$h >> output.txt
done
done
done
done
done
done
done
done

echo $SECONDS >> output.txt

echo "ok ok ok ok "