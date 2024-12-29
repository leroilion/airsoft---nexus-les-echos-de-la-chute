# Airsoft scénario : Nexus, l'écho de la chute

Ce projet est un scénario d'airsoft sur un thème futuriste.

## Compiler les règles

Vous pouvez soit utiliser le makefile, soit utiliser le dockerfile pour les compiler.

```bash
docker build -f Dockerfile . --tag rules_builder  # Pour créer l'image docker

# Pour compiler les règles
docker run --rm --volume %cd%:/data rules_builder  # Sous windows en invite de commande
docker run --rm --volume ${PWD}:/data rules_builder  # Sous windows dans un powershell
docker run --rm --volume $(pwd):/data rules_builder  # Sous GNU/Linux
```
