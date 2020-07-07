<?php
    namespace App\Controller;

    use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
    use Symfony\Component\HttpFoundation\Response;
    use Symfony\Component\Routing\Annotation\Route;
    use App\Entity\Property;
    use App\Repository\PropertyRepository;
    //use Doctrine\Common\Persistence\ObjectManager; //L'objet appelé ici doit être remplacé par celui qui est en bas dans la version 4.4 de Symfony.
    use Doctrine\ORM\EntityManagerInterface;


class PropertyController extends AbstractController{

        /**
         * @var PropretyRepository
         */
        private $repository;

        /**
         * @var EntityManagerInterface
         */
        private $em;
        
        public function __construct(PropertyRepository $repository, EntityManagerInterface $em)
        {
            $this->repository = $repository;
            $this->em = $em;
        }

        /**
         * @Route("/biens", name="property.index")
         * @return Response
         */
        public function index(): Response{
            /*
                //Code permettant de changer le champ "sold" de la base de données 
                //Nécessite @var $em EntityManagerInterface
                
                $property = $this->repository->findAllVisible();
                
                $property[0]->setSold(true);
                $this->em->flush();
                
            */  


            return $this->render('property/index.html.twig', [
                'current_menu' => 'properties'
            ]);

            /* 
            
                Insertion d'un bien : la technique. :-)

                $property = new Property();
                $property->setTitle('Mon premier bien')
                            ->setPrice(200000)
                            ->setRooms(4)
                            ->setBedRooms(3)
                            ->setDescription('Une petite description')
                            ->setSurface(60)
                            ->setFloor(4)
                            ->setHeat(1)
                            ->setCity('Montpellier')
                            ->setAdress('15 Boulevard GanBetta')
                            ->setPostalCode('34000');

                $em = $this->getDoctrine()->getManager();
                $em->persist($property);
                $em->flush();
            
            */
        }

        /**
         * @Route("/biens/{slug}-{id}", name="property.show", requirements={"slug": "[a-z0-9\-]*"})
         * @return Response
         */
        public function show(Property $property, string $slug): Response{

            if($property->getSlug() !== $slug){
                return $this->redirectToRoute('property.show', [
                    'id' => $property->getId(),
                    'slug' => $property->getSlug()
                ], 301);
            }
            return $this->render('property/show.html.twig', [
                'property' => $property,
                'current_menu' => 'properties'
            ]);
        }

    }