# libasm
L'objectif de ce projet est de se familiariser avec le langage assembleur (x86-64).

# README

Ce projet contient des exemples d'instructions ASM (AMD) classées par catégories.

## Instructions de mouvement de données

- `mov` : Copie le second opérande (source) dans le premier opérande (destination).
- `movzx` : Déplace avec zéro extension. Déplace un opérande plus petit (comme un byte) vers un plus grand (comme un mot), en remplissant les bits supplémentaires avec des zéros.
- `xor` : Effectue une opération XOR bit à bit sur les opérandes. Souvent utilisé pour mettre un registre à zéro.
- `push` : Place la valeur de l'opérande sur la pile.

## Instructions de chargement et de stockage

- `inc` : Incrémente l'opérande.
- `dec` : Décrémente l'opérande.
- `pop` : Retire la valeur de la pile et la place dans l'opérande.
- `lea` : Calcule l'adresse effective d'un opérande et la place dans le registre de destination.

## Instructions arithmétiques

- `add` : Ajoute le second opérande au premier opérande et stocke le résultat dans le premier opérande.
- `sub` : Soustrait le second opérande du premier et stocke le résultat dans le premier opérande.
- `mul` : Multiplie le premier opérande par le second opérande et stocke le résultat dans le registre de destination.
- `div` : Divise le registre de division par le second opérande, stocke le quotient dans le registre de destination et le reste dans un autre registre.
- `imul` : Multiplie le premier opérande par le second opérande et stocke le résultat dans le registre de destination. Gère également les opérations signées.
- `idiv` : Divise le registre de division par le second opérande, stocke le quotient dans le registre de destination et le reste dans un autre registre. Gère également les opérations signées.
- `inc` : Incrémente l'opérande.
- `dec` : Décrémente l'opérande.
- `neg` : Négation arithmétique de l'opérande.

## Instructions logiques

- `and` : Effectue une opération AND bit à bit sur les opérandes et stocke le résultat dans le premier opérande.
- `or` : Effectue une opération OR bit à bit sur les opérandes et stocke le résultat dans le premier opérande.
- `not` : Effectue une opération NOT bit à bit sur l'opérande et stocke le résultat dans le registre de destination.
- `test` : Effectue une opération AND bit à bit sur les opérandes et met à jour les indicateurs en fonction du résultat. Il est souvent utilisé pour vérifier si un opérande est zéro.

## Instructions de comparaison

- `cmp` : Compare deux opérandes en soustrayant le second du premier, puis met à jour les indicateurs en fonction du résultat.
- `test` : Effectue une opération AND bit à bit sur les opérandes et met à jour les indicateurs en fonction du résultat. Il est souvent utilisé pour vérifier si un opérande est zéro.
- `set` : Définit un octet du registre de destination en fonction des indicateurs. Par exemple, `sete` définira un octet à 1 si l'indicateur de zéro est défini, sinon il sera mis à zéro.

## Instructions de branchement

- `jmp` : Effectue un saut inconditionnel vers l'adresse spécifiée.
- `jz` : Saute si le résultat de la dernière comparaison était zéro (Jump if Zero).
- `ja` : Saute si le résultat de la dernière comparaison était supérieur (Jump if Above).
- `jae` : Saute si le résultat de la dernière comparaison était supérieur ou égal (Jump if Above or Equal).
- `jb` : Saute si le résultat de la dernière comparaison était inférieur (Jump if Below).
- `jbe` : Saute si le résultat de la dernière comparaison était inférieur ou égal (Jump if Below or Equal).
- `je` : Saute si le résultat de la dernière comparaison était égal (Jump if Equal).
- `jne` : Saute si le résultat de la dernière comparaison était différent (Jump if Not Equal).
- `js` : Saute si le résultat de la dernière comparaison était négatif (Jump if Sign).
- `jns` : Saute si le résultat de la dernière comparaison était positif (Jump if Not Sign).
- `jo` : Saute si un débordement s'est produit (Jump if Overflow).
- `jno` : Saute si aucun débordement ne s'est produit (Jump if No Overflow).

## Instructions Conditionnelles

- `cmovz` : Déplace la valeur du second opérande dans le premier opérande si le résultat de la dernière comparaison était zéro (Conditional Move if Zero).
- `cmova` : Déplace la valeur du second opérande dans le premier opérande si le résultat de la dernière comparaison était supérieur (Conditional Move if Above).
- `cmovae` : Déplace la valeur du second opérande dans le premier opérande si le résultat de la dernière comparaison était supérieur ou égal (Conditional Move if Above or Equal).
- `cmovb` : Déplace la valeur du second opérande dans le premier opérande si le résultat de la dernière comparaison était inférieur (Conditional Move if Below).
- `cmovbe` : Déplace la valeur du second opérande dans le premier opérande si le résultat de la dernière comparaison était inférieur ou égal (Conditional Move if Below or Equal).
- `cmovg` : Déplace la valeur du second opérande dans le premier opérande si le résultat de la dernière comparaison était strictement supérieur (Conditional Move if Greater).
- `cmovge` : Déplace la valeur du second opérande dans le premier opérande si le résultat de la dernière comparaison était supérieur ou égal (Conditional Move if Greater or Equal).
- `cmovl` : Déplace la valeur du second opérande dans le premier opérande si le résultat de la dernière comparaison était strictement inférieur (Conditional Move if Less).
- `cmovle` : Déplace la valeur du second opérande dans le premier opérande si le résultat de la dernière comparaison était inférieur ou égal (Conditional Move if Less or Equal).

## Autres instructions

- `ret` : Retourne d'une fonction ou d'une procédure.
- `shl` : Décale le contenu du registre de destination vers la gauche en utilisant le nombre spécifié de bits.
- `shr` : Décale le contenu du registre de destination vers la droite en utilisant le nombre spécifié de bits.
- `nop` : No Operation, une instruction qui ne fait rien et est souvent utilisée pour ajouter un délai ou remplir un espace dans le code.
- `pause` : Indique aux processeurs modernes d'attendre pendant un court laps de temps pour économiser de l'énergie ou permettre l'exécution d'autres threads.
