# Revision history for realw

## 0.1.0.3 -- 2020-10-18

Chapter 3: Defining Types, Streamlining Functions

### Added

* src/Ch03/BookStore.hs         (example used throughout entire chapter)
* src/Ch03/Bool.hs              (example from p. 44) 
* src/Ch03/Distinction.hs       (example from p. 46)
* src/Ch03/AlgebraicVector.hs   (example from p. 46)
* src/Ch03/Roygbiv.hs           (example from p. 48)
* src/Ch03/ShapeUnion.hs        (example from p. 49)

### Changed

* ChangeLog.md
* package.yaml                  (new version)
* realw.cabal

## 0.1.0.2 -- 2020-10-15

Chapter 2: Types an functions

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
