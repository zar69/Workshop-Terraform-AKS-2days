# Lab 11 - Pipeline CI/CD Terraform avancé

## Objectifs
Faire un pipeline CD/CI Terraform avancé intégrant du Lint et des tests de sécurité sur le code :
- Contrôle du formatage du code HCL selon les conventions syntaxiques via terraform fmt
- Validation syntaxique du code HCL via terraform validate
- Tests de sécurité avec Checkov 2.0

Les erreurs rencontrées seront envoyées dans des issues GitHub

Le pipeline est composé de 2 jobs
- Un job CI
- un job CD

Le résultat du job de CI est la génération d'un fichier .tfout qui sera placé dans un Artifact

le job CD récupère l'artifact généré dans le job de CD

## Déroulé

Modifier le fichier toto.hcl et commiter. 

Le pipeline va se déclencher et va avoir des erreurs.

Aller voir les issues et corriger le code. 

## Indices 

### terraform fmt
terraform fmt
https://www.terraform.io/cli/commands/fmt

Terraform syntax convention
https://www.terraform.io/language/syntax/style

https://github.com/hashicorp/terraform/issues/24303

What you saw here is the intended behavior of `terraform fmt`. Specifically, the alignment of equals signs only happens for consecutive runs of _single-line_ arguments. Multi-line arguments are considered to be an entirely separate "group" (with only one item) for alignment purposes, because the benefit of easily scanning over the values doesn't apply when the value itself isn't positioned relative to the equals sign anyway.

As with all of the `terraform fmt` formatting decisions, this is a subjective and therefore essentially arbitrary decision based on tradeoffs made by the original implementer, and it's unlikely to change because that would cause changes for everyone who had previously formatted examples like this with `terraform fmt` in earlier versions. The bar for changes to existing `terraform fmt` layout behaviors is very high, and would typically need to have a strong and objective (rather than subjective) justification to warrant causing diffs for all existing Terraform configurations after upgrading

### terraform validate
https://www.terraform.io/cli/commands/validate

### Checkov 
