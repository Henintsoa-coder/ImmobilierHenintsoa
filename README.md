Site internet construit avec Symfony.

-------------------------------------------------------------------------------------------------------
url de l'espace d'administration : http://127.0.0.1:8000/admin
Nom d'utilisateur : demo
Mot de passe : demo

Pour le redimensionnement des images, il est (parfois) nécessaire d'utiliser la commande php bin/console liip:imagine:cache:resolve images/properties/nom_de_l_image.jpg --filter=medium --filter=thumb. Cela provient probablement d'un bug au niveau de Symfony car de nombreux autres utilisateurs ont aussi eu le même problème que moi.

Ce problème peut être résolu en utilisant le WebserverBundle de Symfony, mais des fois il marche et des fois il ne marche pas.
-------------------------------------------------------------------------------------------------------

Le css a été créé en utilisant le cdn de bootstrap. :-)