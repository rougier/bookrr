# Partager ses données, codes et résultats  {#C-data-share}

La mise à disposition des données de la recherche est un point clé pour leur
réutilisabilité et pour faciliter la reproductibilité de la recherche par vos
pairs. Pour un partage efficace, il est important de choisir :
- une licence adaptée (chapitre \@ref(C-licences)), 
- un format *ad hoc* (chapitre \@ref(C-data-format)).

Il convient aussi d'élaborer une documentation extensive levant les
ambiguïtés d'interprétation (chapitre \@ref(C-code-good)), et enfin de choisir
un mode de partage le plus ouvert et pérenne possible.


## *Compendium* de recherche

Avant de présenter différentes modalités de partage, intéressons-nous à la notion de *compendium de recherche*.
Il s'agit d'un outil qui facilite la recherche
reproductible en rassemblant dans un même " lieu " (virtuel) les données, les
codes, les protocoles et la documentation liés à un projet de recherche.

La façon la plus simple d'élaborer un *compendium* de recherche est de créer un
répertoire associé au projet, avec des sous-répertoires dans lesquels sont
répartis les objets. Une convention de nommage explicite des objets et
répertoires facilite la réutilisabilité. Par exemple, pour une simple analyse
statistique d'un jeu de données, *SG*[Ben Marwick, Carl Boettiger & Lincoln Mullen
(2018) Packaging Data Analytical Work Reproducibly Using R (and Friends), The
American Statistician, 72:1, 80-88, DOI: 10.1080/00031305.2017.1375986]()
proposent la structure suivante :

![](img/compendium_fr.png)

*Image CC-BY par Ben Marwick, Carl Boettiger & Lincoln Mullen.*

Ces *compendia* peuvent être alors archivés et référencés comme tout autre objet
numérique sous forme de dossiers compressés ou sur des plates-formes spécialisées
comme par exemple l'[Open Science Framework (OSF)](https://osf.io/).


## Modalités de partage

Nous considérons dans cette partie que vos données peuvent être légalement
ouvertes au public.


### Sur demande

Le degré zéro (voire -1) de la mise à disposition des données pour la communauté, 
est de mentionner dans l'article qu'elles sont disponibles " Sur demande à l'auteur ". 

Cette approche permet à l'auteur de garder une forme de contrôle, mais est peu pérenne et tend à
disparaître, ne serait-ce que par la politique d'ouverture adoptée par de
nombreuses plates-formes éditoriales. De plus, on comprend aisément que le départ
à la retraite de l'auteur, ou son changement d'adresse de courriel deviennent
problématiques.

### Page web personnelle

Créer une page web personnelle pour faciliter l'accès aux données est une
solution simple et un premier pas dans la bonne direction, mais ici encore, de
nombreux aléas risquent de compromettre la continuité de service. Si cette
solution est envisagée, et nous ne vous la conseillons pas, l'utilisation
d'une page web institutionnelle, intégrée au site d'un laboratoire offrira
une visibilité accrue et une meilleure pérennité.

### Hébergement par un tiers 

Il existe des solutions permettant ainsi de partager un répertoire entier, la
plus populaire étant [Dropbox](https://www.dropbox.com/) ou son équivalent
libre [Framadrive](https://framadrive.org/login). La granularité à laquelle ils
opèrent est le fichier. C'est la raison pour laquelle, il existe des solutions
plus spécifiques selon les formats de fichiers utilisés. Par exemple lorsque
l'on travaille sur des données de type tableur, une solution
populaire est [Google Spreadsheet](https://spreadsheets.google.com/)
(resp. [Google Docs](https://docs.google.com/)) ou (mieux) son équivalent libre
[Framacalc](https://framacalc.org/) (resp. [Framapad](https://framapad.org/)).

Si ces services sont très pratiques et très faciles à utiliser, ils posent un
certain nombre de problèmes dans un contexte recherche :

* Certaines informations sont confidentielles (données de santé, collaborations
  avec des partenaires industriels, idées ayant vocation à être brevetées,
  etc.). Déléguer la responsabilité du contrôle d'accès à un hébergeur extérieur
  (qu'il soit privé ou associatif) peut poser de sérieux problèmes. Il convient
  donc d'utiliser les équivalents institutionnels et à réclamer leur déploiement
  s'ils n'existent pas.
  
* La pérennité sur le long terme des outils comme des services n'est absolument pas garantie. En déléguant la
  responsabilité du stockage à un hébergeur extérieur, vous prenez un risque
  conséquent. Vous pouvez utiliser ce type de service mais il faut absolument
  vous assurer que vous disposez d'une solution d'archivage en complément : 
  les exemples de Gitorious et de Google Code qui étaient des   services d'hébergement 
  de code très populaires mais qui ont fermé.
  
* La gestion de version est automatique mais très peu contrôlé. Dropbox par
  exemple ne conserve que quelques versions intermédiaires et ce uniquement
  pendant une durée assez limitée dans le temps (quelques mois). Et comme la
  synchronisation avec votre propre ordinateur est automatique, il n'est donc
  pas rare de perdre des données au bout de quelques temps avant d'avoir eu le
  temps de réaliser quoi que ce soit. L'exemple le plus classique dans un
  contexte non professionnel est celui du partage d'un dossier contenant des
  photos avec votre beau-père qui efface un jour les photos pour faire de la
  place sur son propre disque dur, ce qui par ricochet efface les données sur
  votre propre ordinateur sans vous prévenir.

### Archives pérennes

Il existe actuellement de nombreuses plates-formes permettant d'héberger
" gratuitement " les données de la recherche. Nous avons évoqué dans le chapitre
\@ref(C-versioning) des solutions pour le suivi de version (GitLab, GitHub,
...) qui permettent une forme d'archivage. La pérennité de cet archivage est
meilleure que celle des solutions précédentes mais n'est pas parfaite non
plus. D'autre part ces systèmes, initialement prévus pour héberger du code,
gèrent assez mal les gros volumes de données et les données de type binaire
(images bitmap, videogrammes, codes compilés...).

Pour tous ces types de données, des solutions privées de type
[Figshare](https://figshare.com), ou publiques comme
[Zenodo](https://zenodo.org) offrent un archivage sur le long terme et fournissent 
un DOI permettant un référencement stable des données
dans la littérature. 
Pour les logiciels, une archive existe :
[Software Heritage](https://www.softwareheritage.org). En tandem avec un
système de gestion de version, ces archives permettent de conserver de façon
pérenne et d'indexer les versions successives les artefacts de la recherche.


## Pour en savoir plus

Vous pouvez consulter les [recommandations du
CNRS](http://qualite-en-recherche.cnrs.fr/spip.php?article315) concernant la
traçabilité des activités de recherche, ainsi que les principes [FAIR (Findable,
Accessible, Interoperable, Reusable)](https://www.go-fair.org/fair-principles/)

Pour une exposition très claire des problèmes de pérennité, vous
pouvez regarder le [séminaire de Roberto Di
Cosmo](https://github.com/alegrand/RR_webinars/blob/master/5_archiving_software_and_data/index.org)
sur ce sujet.
 