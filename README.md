# Abstract Factory Pattern

![Pattern](https://img.shields.io/badge/Creational-Patterns-green.svg)
![Languages](https://img.shields.io/badge/Language-swift-green.svg)

### Motivación
Haces una aplicación. Está tan bonita que hasta duele al tocarla y de repente aparece la linda idea de... Y si añadimos más layouts a nuestras views? Y si añadimos nuevas configuraciones? Y si...? Y si..? 

Y tú te quedas ahí, con tu linda cara diciendo: "Y lo bien que estaba todo..."

En fin. A grandes males, grandes remedios.

### Idea
**Compartir la misma interfaz entre clases diferentes para poder utilizarlas de la misma forma, abstrayéndonos completamente de funcionamiento interno.**

### Problema

Pasar de:

```swift
superHeroMarvel.resolveMarvelProblem(problem: "Disturbs on the street")
superHeroDC.resolveDCProblem(problem: "Bank robbery")
```
a:

```swift
superHeroMarvel.resolve(problem: "Disturbs on the street") 
superHeroDC.resolve(problem: "Bank robbery")
```

### Solución

Dentro del playground podréis ver la implementación de un ejemplo de Abstract Factory Pattern de una forma corta, elegante y fácil de entender. Creando diferentes tipos de súper héroe que implementan la misma forma de resolver problemas.
