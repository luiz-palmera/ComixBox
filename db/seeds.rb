# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

comics = Comic.create([
    {
        name: "Guerras Secretas #8",
        synopsis: "Os heróis invadem a base dos vilões em retaliação pela morte da Vespa. Eles derrotam os vilões e capturam 
        a maioria deles. Ao retornarem para sua base com uma Mulher-Hulk gravemente ferida, descobrem que a Vespa não está 
        morta, mas foi curada por Zsaji. Quando o Homem-Aranha percebe que o traje de Thor foi restaurado, ele é direcionado
        a uma máquina que cospe uma pequena bola preta que rapidamente o cobre e se torna seu novo traje. Xavier entra em
        contato com os heróis e lhes diz que Galactus começou a devorar o Mundo de Batalha.",
        image_url: "https://files1.comics.org//img/gcd/covers_by_id/989/w400/989165.jpg?4981458749147407200"
    },
    {
        name: "Batman: The Long Halloween",
        synopsis: "“Batman: The Long Halloween” is a 13-issue comic series by Jeph Loeb and Tim Sale, published by DC Comics in 1996-1997. 
        It follows Batman, Harvey Dent, and James Gordon as they hunt a killer named Holiday. The series explores Gotham’s shift from organized
        crime to supervillains and serves as an origin story for Two-Face. Its success led to sequels “Batman: Dark Victory” and 
        “Catwoman: When in Rome,” with a third sequel, “The Last Halloween,” starting in 2024.",
        image_url: "https://files1.comics.org//img/gcd/covers_by_id/1525/w400/1525977.jpg?-2503815629365525336"
    }
])

reviews = Review.create([
    {
        description: "Edição sensacional",
        score: 5,
        comic: comics.first
    },
    {
        description: "Essa saga está indo de mal a pior",
        score: 1,
        comic: comics.first
    },
])
