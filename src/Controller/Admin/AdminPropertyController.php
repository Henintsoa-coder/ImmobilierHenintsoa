<?php

    namespace App\Controller\Admin;

    use App\Entity\Option;
    use App\Form\PropertyType;
    use App\Repository\PropertyRepository;
    use Doctrine\Common\Persistence\ObjectManager;
    use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
    use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
    use Symfony\Component\HttpFoundation\Request;
    use Doctrine\ORM\EntityManagerInterface; //A la place du ObjectManager, on utilise EntityManagerInterface ==> Symfony 4.4
    use App\Entity\Property;

class AdminPropertyController extends AbstractController {

    /**
     * @var PropretyRepository
     */
    private $repository;

    /**
     * @var EntityManagerInterface
     */
    private $em;
    

    public function __construct(PropertyRepository $repository, EntityManagerInterface $em){
        $this->repository = $repository;
        $this->em = $em;
    }

    /**
     * @Route("/admin", name="admin.property.index")
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index() {
        $properties = $this->repository->findAll();
        return $this->render('admin/property/index.html.twig', compact('properties'));
    }
    
    /**
     * @Route("/admin/property/create", name="admin.property.new")
     */
    public function new(Request $request){
            $property = new Property();
            //dump($property);
            $form = $this->createForm(PropertyType::class, $property);
            $form->handleRequest($request); /*La méthode handleRequest() permet de prendre en compte les données qui sont postées.*/  

            if ($form->isSubmitted() && $form->isValid()) {
                $this->em->persist($property); //Permet de faire suivre les données par l'EntityManager 
                $this->em->flush(); //Permet d'insérer les données dans la base de données
                $this->addFlash('success', 'Bien créé avec succès.');
                return $this->redirectToRoute('admin.property.index');
            }

            return $this->render('admin/property/new.html.twig', [
                'property' => $property,
                'form' => $form->createView() 
            ]);
    }
    
    /**
     * @Route("/admin/property/{id}", name ="admin.property.edit", methods="GET|POST")
     * @param Property $property
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(Property $property, Request $request) {

        //$option = new Option();
        
        //dump($property->addOption($option));

        $form = $this->createForm(PropertyType::class, $property);
        $form->handleRequest($request); 

        if ($form->isSubmitted() && $form->isValid()) {
            $this->em->flush();
            $this->addFlash('success', 'Bien modifié avec succès.');
            return $this->redirectToRoute('admin.property.index');
        }

        return $this->render('admin/property/edit.html.twig', [
            'property' => $property,
            'form' => $form->createView() 
        ]);
    }

    /**
     * @Route("/admin/property/{id}", name="admin.property.delete", methods="DELETE")
     * @param Property $property
     */
    public function delete(Property $property, Request $request){
        if ($this->isCsrfTokenValid('delete' . $property->getId(), $request->get('_token'))) {
            $this->em->remove($property);
            $this->em->flush();
            $this->addFlash('success', 'Bien supprimé avec succès.');
        }
        
        return $this->redirectToRoute('admin.property.index');
    }

    
}