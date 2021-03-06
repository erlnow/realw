# Revision history for realw


## 0.1.3.3 -- 2020-10-26

Exercises from Chapter 3

### Changed 

* src/Ch03/MyLength.hs          (Exercises 1 & 2)
* src/Ch03/MeanList.hs          (Exercise 3)
* src/Ch03/Palindrome.hs        (Exercise 4 & 5)
* src/Ch03/SortByLength.hs      (Exercise 6)
* src/Ch03/Intersperse.hs       (Exercises 7 and 8)
* src/Ch03/Height.hs            (Exercises 9)
* src/Ch02/ShortCircuit.hs      (fix haddock doctest comment)
* ChangeLog.md
* package.yaml
* realw.cabal

## 0.1.3.2 -- 2020-10-23

Fixed warnings

### Changed

* src/Ch03/Add.hs               (added signatures to prevent -Wmissing-signatures)
* src/Ch02/Add.hs               (removed)
* src/Ch02/MyDrop.hs            (added signatures to prevent -Wmissing-signatures)
* src/Ch03/BadPattern.hs        (added signature, and comment bad definition)
* src/Ch03/BogusPattern.hs      (comment all definitions, defined a new function)
* src/Ch03/BookStore.hs         (added signatures and comment first version accessor functions)
* src/Ch03/Braces.hs            (added signatures, removes -Wtypes-defaults also)
* src/Ch03/Distinction.hs       (added signatures)
* src/Ch03/GlobalVariable.hs    (added signatures)
* src/Ch03/GoodIndent.hs        (added signatures, removes -Wtypes-defaults also) 
* src/Ch03/Guard.hs             (added signatures)
* src/Ch03/Lendings.hs          (added signatures)
* src/Ch03/Letwhere.hs          (added signatures, removes -Wtypes-defaults also)
* src/Ch03/ListADT.hs           (added signatures)
* src/Ch03/NestedLets.hs        (added signatures and GHC pragma)
* src/Ch03/Nullable.hs          (added signatures and `import hidding`)
* src/Ch03/Tree.hs              (added signatures)
* src/Ch03/BadTree.hs           (added signatures)
* src/Ch03/Tuples.hs            (added signatures and GHC pragma)
* ChangeLog.md
* package.yaml
* realw.cabal

## 0.1.3.1 -- 2020-10-22

Changed Version, now 0.1.<chapter>.<minor>

### Changed 

* ChangeLog.md
* package.yaml
* realw.cabal

## 0.1.0.3 -- 2020-10-22

Chapter 3: Defining Types, Streamlining Functions

### Added

* src/Ch03/BookStore.hs         (example used throughout entire chapter)
* src/Ch03/Bool.hs              (example from p. 44) 
* src/Ch03/Distinction.hs       (example from p. 46)
* src/Ch03/AlgebraicVector.hs   (example from p. 46)
* src/Ch03/Roygbiv.hs           (example from p. 48)
* src/Ch03/ShapeUnion.hs        (example from p. 49)
* src/Ch03/Add.hs               (example from p. 50)
* src/Ch03/Tuples.hs            (example from p. 52)
* src/Ch03/BadPattern.hs        (example from p. 54)
* src/Ch03/Nullable.hs          (example from p. 57)
* src/Ch03/ListADT.hs           (example from p. 58)
* src/Ch03/Tree.hs              (example from p. 58)
* src/Ch03/MySecond.hs          (example from p. 60)
* src/Ch03/Lendings.hs          (example from p. 62)
* src/Ch03/NestedLets.hs        (example from p. 62)
* src/Ch03/LocalFunction.hs     (example from p. 64)
* misc/ch03/GlobalFunction.hs   (example from p. 64)
* misc/ch03/BadIndent.hs        (example from p. 64)
* src/Ch03/GoodIndent.hs        (example from p. 64)
* misc/ch03/Indentation.hs      (example from p. 65)
* src/Ch03/Letwere.hs           (example from p. 65)
* src/Ch03/Braces.hs            (example from p. 66)
* src/Ch03/Guard.hs             (example from pp. 66,67)
* src/Ch03/BogusPattern.hs      (example from pp. 67,68)


### Changed

* src/Ch02/MyDrop.hs            (example from p. 69)
* ChangeLog.md
* package.yaml                  (new version)
* realw.cabal

## 0.1.0.2 -- 2020-10-15

Chapter 2: Types and functions

### Added

* Setup.hs                      (cabal seems to ignore this file)
* src/Ch02/Add.hs               (example from p. 28)
* src/Ch02/Assign.hs            (example from p. 29)
* src/Ch02/MyDrop.hs            (example from p. 29)
* src/Ch02/RoundToEven.hs       (example from p. 32)
* src/Ch02/ShortCircuit.hs      (example from p. 34)
* src/Ch02/LastButOne.hs        (exercise from p. 39)

### Changed

* ChangeLog.md          (version change)
* package.yaml
* realw.cabal

## 0.1.0.1 -- 2020-10-13

Chapter 1: Getting Started

### Added

* app/Ch01/Main.hs (exe:WC component; in the book is ch01/WC.hs)
* data/quux.txt    (cities, uses as data for exe:WC)
* TODO

### Changed

* app/Ch01/Main.hs for exercise 3 and 4
* Moved 'app/Main.hs' to 'app/sample/Main.hs' for better app isolation
* ChangeLog.md
* hie.yaml
* package.yaml
* realw.cabal


### Added 

First example from Preface

* src/Ch00/KMinima.hs
* test/spec/Ch00Spec.hs

### Changed

* ChangeLog.md
* package.yaml
* realw.cabal

## 0.1.0.0 -- 2020-10-12

Skeleton for app + library project with Cabal, hpack, gen-hie

### Added
* .gitignore
* ChangeLog.md
* LICENSE
* README.md
* TODO
* app/Main.hs
* hie.yaml
* package.yaml
* realw.cabal
* src/MyLib.hs
* test/MyLibTest.hs
* test/doctest/Main.hs
* test/spec/Spec.hs
