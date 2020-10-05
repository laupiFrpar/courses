<?php

namespace App\Test;

use App\ApiPlatform\Test\ApiTestCase;
use App\ApiPlatform\Test\Client;
use App\Entity\User;

class CustomApiTestCase extends ApiTestCase
{
    protected function createUser(string $email, string $password): User
    {
        $user = new User();
        $user
            ->setEmail($email)
            ->setUsername(substr($email, 0, strpos($email, '@')))
        ;

        $encoded = self::$container->get('security.password_encoder')
            ->encodePassword($user, $password)
        ;
        $user->setPassword($encoded);

        $em = self::$container->get('doctrine')->getManager();
        $em->persist($user);
        $em->flush();

        return $user;
    }

    protected function logIn(Client $client, string $email, string $password)
    {
        $client->request('POST', '/login', [
            'json' => [
                'email' => 'cheeseplease@example.com',
                'password' => 'foo',
            ],
        ]);
        $this->assertResponseStatusCodeSame(204);
    }

    protected function createUserAndLogIn(Client $client, string $email, string $password): User
    {
        $user = $this->createUser($email, $password);
        $this->logIn($client, $email, $password);

        return $user;
    }
}