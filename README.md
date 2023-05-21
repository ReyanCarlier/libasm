# libasm
L'objectif de ce projet est de se familiariser avec le langage assembleur (x86-64).

## Instructions Assembly

- `mov`: Copie le second opérande (source) dans le premier opérande 
(destination).

- `movzx`: Déplace avec zéro extension. Déplace un opérande plus petit 
(comme un byte) vers un plus grand (comme un mot), en remplissant les bits 
supplémentaires avec des zéros.

- `xor`: Effectue une opération XOR bit à bit sur les opérandes. Souvent 
utilisé pour mettre un registre à zéro.

- `inc`: Incrémente l'opérande.

- `dec`: Décrémente l'opérande.

- `cmp`: Compare deux opérandes en soustrayant le second du premier, puis 
met à jour les indicateurs en fonction du résultat.

- `test`: Effectue une opération AND bit à bit sur les opérandes et met à 
jour les indicateurs en fonction du résultat. Il est souvent utilisé pour 
vérifier si un opérande est zéro.

- `jnz`: Saute si le résultat de la dernière comparaison n'était pas zéro 
(Jump if Not Zero).

- `jns`: Saute si le résultat de la dernière comparaison n'était pas signé 
(Jump if Not Signed).

- `je`: Saute si le résultat de la dernière comparaison était zéro (Jump 
if Equal).

- `sub`: Soustrait le second opérande du premier et stocke le résultat 
dans le premier opérande.

- `ret`: Retourne d'une fonction ou d'une procédure.

## Registres

- `rax`: Registre d'accumulateur utilisé pour les opérations 
arithmétiques, les entrées/sorties, et comme registre de retour de 
fonction.

- `rbx`: Registre de base utilisé pour l'adressage basé sur l'index.

- `rcx`: Registre de comptage pour les boucles et les décalages/bit de 
rotation.

- `rdx`: Registre de données pour les opérations d'entrée/sortie et les 
multiplications/divisions.

- `rsi`: Pointeur de source dans les opérations de chaînes de caractères.

- `rdi`: Pointeur de destination dans les opérations de chaînes de 
caractères.

- `r8` à `r15`: Registres supplémentaires introduits en x86_64.

Chaque registre peut également être utilisé pour stocker des valeurs 
temporaires. Par exemple, nous avons utilisé `rcx` pour compter les 
caractères dans une chaîne.

Dans les appels système, `rax` contient le numéro de l'appel système, et 
`rdi`, `rsi`, `rdx`, `r10`, `r8` et `r9` sont utilisés pour passer jusqu'à 
six arguments à l'appel système. `rax` contient également le résultat de 
l'appel système.

## SYSCALL

Les numéros d'appel système (`syscall`) varient en fonction de 
l'architecture et du système d'exploitation.
Pour Linux sur une architecture x86_64 :

- `0`: `read`: lit les données d'un descripteur de fichier dans un tampon
- `1`: `write`: écrit des données d'un tampon vers un descripteur de 
fichier
- `2`: `open`: ouvre un fichier
- `3`: `close`: ferme un descripteur de fichier
- `4`: `stat`: obtient les informations d'état d'un fichier
- `5`: `fstat`: obtient les informations d'état d'un descripteur de 
fichier
- `6`: `lstat`: obtient les informations d'état d'un fichier, sans suivre 
les liens symboliques
- `8`: `lseek`: change la position de lecture/écriture d'un descripteur de 
fichier
- `9`: `mmap`: mappe un fichier ou un appareil dans la mémoire, peut aussi 
être utilisé pour allouer de la mémoire
- `10`: `mprotect`: change les protections de la mémoire pour une région 
de mémoire mappée
- `11`: `munmap`: démappes une région de mémoire
- `12`: `brk`: change l'emplacement du segment de données du programme
- `20`: `writev`: écrit plusieurs tampons en une seule opération
- `21`: `access`: vérifie les droits d'accès d'un utilisateur à un fichier
- `45`: `brk`: alloue ou libère de la mémoire
- `60`: `exit`: termine le processus
- `61`: `exit_group`: termine tous les threads du processus
- `63`: `uname`: obtient les informations sur le système
- `89`: `readlink`: lit le contenu d'un lien symbolique
- `102`: `getuid`: obtient l'ID de l'utilisateur effectif
- `104`: `getgid`: obtient l'ID du groupe effectif
- `158`: `arch_prctl`: définit ou obtient l'architecture de dépendance du 
processus
- `231`: `exit_group`: termine tous les threads du processus

[Sources](http://man7.org/linux/man-pages/dir_section_2.html)
