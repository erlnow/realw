# Revision history for realw

## 0.1.0.1 -- 2020-10-13

Chapter 1: Getting Started

### Added

* app/Ch01/Main.hs (exe:WC component; in the book is ch01/WC.hs)
* data/quux.tx     (cities, uses as data for exe:WC)
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
