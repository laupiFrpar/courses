<?php

namespace App\Tests\Functional;

use App\ApiPlatform\Test\ApiTestCase;
use App\Entity\User;

class CheeseListingResourceTest extends ApiTestCase
{
    public function testCreateCheeseListing()
    {
        $client = self::createClient();

        $client->request('POST', '/api/cheeses', [
            'headers' => [
                'Content-Type' => 'application/json',
            ],
            'json' => [],
        ]);
        $this->assertResponseStatusCodeSame(401);

        $user = new User();
        $user
            ->setEmail('cheeseplease@example.com')
            ->setUsername('cheeseplease')
            ->setPassword('$2y$13$J4AGI6sPukuTWazfnGlEfOvVNFZ0Zit.ovuFt7uArevQEg7rNUQke')
        ;

        $em = self::$container->get('doctrine')->getManager();
        $em->persist($user);
        $em->flush();

        $client->request('POST', '/login', [
            'headers' => [
                'Content-Type' => 'application/json',
            ],
            'json' => [
                'email' => 'cheeseplease@example.com',
                'password' => 'foo',
            ],
        ]);
        $this->assertResponseStatusCodeSame(204);
    }
}
