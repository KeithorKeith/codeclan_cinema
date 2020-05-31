require_relative('models/customers')
require_relative('models/films')
require_relative('models/tickets')
require('pry')


# Ticket.delete_all()
# Film.delete_all()
# Customer.delete_all()

    film1 = Film.new({
        'title' => 'The Gremlins',
        'price' => 10
    })

    film1.save()

    film2 = Film.new({
        'title' => 'The Gremlins 2',
        'price' => 15
    })

    film2.save()

    film3 = Film.new({
        'title' => 'The Gremlins 3 2022',
        'price' => 100
    })

    film3.save()

    customer1 = Customer.new({
        'name' => 'Keith',
        'funds' => 90
    })

    customer1.save()

    customer2 = Customer.new({
        'name' => 'Lucy',
        'funds' => 200
    })

    customer2.save()


    ticket1 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer1.id})
    ticket2 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer2.id})
    ticket3 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer2.id})

    ticket1.save()
    ticket2.save()
    ticket3.save()

    binding.pry
    nil

