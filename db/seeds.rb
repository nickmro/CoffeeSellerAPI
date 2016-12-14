# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coffee_machine_large = ProductType.create(name: 'Coffee Machine Large')
coffee_machine_small = ProductType.create(name: 'Coffee Machine Small')
espresso_machine     = ProductType.create(name: 'Espresso Machine')
coffee_pod_large     = ProductType.create(name: 'Coffee Pod Large')
coffee_pod_small     = ProductType.create(name: 'Coffee Pod Small')
espresso_pod         = ProductType.create(name: 'Espresso Pod')

pod_size_small    = PodSize.create(name: 'small')
pod_size_large    = PodSize.create(name: 'large')
pod_size_espresso = PodSize.create(name: 'espresso')

vanilla_flavor  = Flavor.create(name: 'Vanilla')
caramel_flavor  = Flavor.create(name: 'Caramel')
psl_flavor      = Flavor.create(name: 'PSL')
mocha_flavor    = Flavor.create(name: 'Mocha')
hazelnut_flavor = Flavor.create(name: 'Hazelnut')

dozen_1_pack_size = PackSize.create(name: '1 dozen', quantity: 12)
dozen_3_pack_size = PackSize.create(name: '3 dozen', quantity: 36)
dozen_5_pack_size = PackSize.create(name: '5 dozen', quantity: 60)
dozen_7_pack_size = PackSize.create(name: '7 dozen', quantity: 84)

cm001 = CoffeeMachine.create(description: 'small machine, base model',
                             sku: 'CM001',
                             type: coffee_machine_small,
                             water_line_compatible: false,
                             pod_size: pod_size_small)
cm002 = CoffeeMachine.create(description: 'small machine, premium model',
                             sku: 'CM002',
                             type: coffee_machine_small,
                             water_line_compatible: false,
                             pod_size: pod_size_small)
cm003 = CoffeeMachine.create(description: 'small machine, deluxe model, water line compatible',
                             sku: 'CM003',
                             type: coffee_machine_small,
                             water_line_compatible: true,
                             pod_size: pod_size_small)
cm101 = CoffeeMachine.create(description: 'large machine, base model',
                             sku: 'CM101',
                             type: coffee_machine_large,
                             water_line_compatible: false,
                             pod_size: pod_size_large)
cm102 = CoffeeMachine.create(description: 'large machine, premium model, water line compatible',
                             sku: 'CM102',
                             type: coffee_machine_large,
                             water_line_compatible: true,
                             pod_size: pod_size_large)
cm103 = CoffeeMachine.create(description: 'large machine, deluxe model, water line compatible',
                             sku: 'CM103',
                             type: coffee_machine_large,
                             water_line_compatible: true,
                             pod_size: pod_size_large)
em001 = CoffeeMachine.create(description: 'espresso machine, base model',
                             sku: 'EM001',
                             type: espresso_machine,
                             water_line_compatible: false,
                             pod_size: pod_size_espresso)
em002 = CoffeeMachine.create(description: 'espresso machine, premium model',
                             sku: 'EM002',
                             type: espresso_machine,
                             water_line_compatible: false,
                             pod_size: pod_size_espresso)
em003 = CoffeeMachine.create(description: 'espresso machine, deluxe model, water line compatible',
                             sku: 'EM003',
                             type: espresso_machine,
                             water_line_compatible: true,
                             pod_size: pod_size_espresso)

cp001 = CoffeePod.create(description: 'small coffee pod, 1 dozen, vanilla',
                         sku: 'CP001',
                         type: coffee_pod_small,
                         flavor: vanilla_flavor,
                         pack_size: dozen_1_pack_size,
                         pod_size: pod_size_small)
cp003 = CoffeePod.create(description: 'small coffee pod, 3 dozen, vanilla',
                         sku: 'CP003',
                         type: coffee_pod_small,
                         flavor: vanilla_flavor,
                         pack_size: dozen_3_pack_size,
                         pod_size: pod_size_small)
cp011 = CoffeePod.create(description: 'small coffee pod, 1 dozen, caramel',
                         sku: 'CP011',
                         type: coffee_pod_small,
                         flavor: caramel_flavor,
                         pack_size: dozen_1_pack_size,
                         pod_size: pod_size_small)
cp013 = CoffeePod.create(description: 'small coffee pod, 3 dozen, caramel',
                         sku: 'CP013',
                         type: coffee_pod_small,
                         flavor: caramel_flavor,
                         pack_size: dozen_3_pack_size,
                         pod_size: pod_size_small)
cp021 = CoffeePod.create(description: 'small coffee pod, 1 dozen, psl',
                         sku: 'CP021',
                         type: coffee_pod_small,
                         flavor: psl_flavor,
                         pack_size: dozen_1_pack_size,
                         pod_size: pod_size_small)
cp023 = CoffeePod.create(description: 'small coffee pod, 3 dozen, psl',
                         sku: 'CP023',
                         type: coffee_pod_small,
                         flavor: psl_flavor,
                         pack_size: dozen_3_pack_size,
                         pod_size: pod_size_small)
cp031 = CoffeePod.create(description: 'small coffee pod, 1 dozen, mocha',
                         sku: 'CP031',
                         type: coffee_pod_small,
                         flavor: mocha_flavor,
                         pack_size: dozen_1_pack_size,
                         pod_size: pod_size_small)
cp033 = CoffeePod.create(description: 'small coffee pod, 3 dozen, mocha',
                         sku: 'CP033',
                         type: coffee_pod_small,
                         flavor: mocha_flavor,
                         pack_size: dozen_3_pack_size,
                         pod_size: pod_size_small)
cp041 = CoffeePod.create(description: 'small coffee pod, 1 dozen, hazelnut',
                         sku: 'CP041',
                         type: coffee_pod_small,
                         flavor: hazelnut_flavor,
                         pack_size: dozen_1_pack_size,
                         pod_size: pod_size_small)
cp043 = CoffeePod.create(description: 'small coffee pod, 3 dozen, hazelnut',
                         sku: 'CP043',
                         type: coffee_pod_small,
                         flavor: hazelnut_flavor,
                         pack_size: dozen_3_pack_size,
                         pod_size: pod_size_small)
cp101 = CoffeePod.create(description: 'large coffee pod, 1 dozen, vanilla',
                         sku: 'CP101',
                         type: coffee_pod_large,
                         flavor: vanilla_flavor,
                         pack_size: dozen_1_pack_size,
                         pod_size: pod_size_large)
cp103 = CoffeePod.create(description: 'large coffee pod, 3 dozen, vanilla',
                         sku: 'CP103',
                         type: coffee_pod_large,
                         flavor: vanilla_flavor,
                         pack_size: dozen_3_pack_size,
                         pod_size: pod_size_large)
cp111 = CoffeePod.create(description: 'large coffee pod, 1 dozen, caramel',
                         sku: 'CP111',
                         type: coffee_pod_large,
                         flavor: caramel_flavor,
                         pack_size: dozen_1_pack_size,
                         pod_size: pod_size_large)
cp113 = CoffeePod.create(description: 'large coffee pod, 3 dozen, caramel',
                         sku: 'CP113',
                         type: coffee_pod_large,
                         flavor: caramel_flavor,
                         pack_size: dozen_3_pack_size,
                         pod_size: pod_size_large)
cp121 = CoffeePod.create(description: 'large coffee pod, 1 dozen, psl',
                         sku: 'CP121',
                         type: coffee_pod_large,
                         flavor: psl_flavor,
                         pack_size: dozen_1_pack_size,
                         pod_size: pod_size_large)
cp123 = CoffeePod.create(description: 'large coffee pod, 3 dozen, psl',
                         sku: 'CP123',
                         type: coffee_pod_large,
                         flavor: psl_flavor,
                         pack_size: dozen_3_pack_size,
                         pod_size: pod_size_large)
cp131 = CoffeePod.create(description: 'large coffee pod, 1 dozen, mocha',
                         sku: 'CP131',
                         type: coffee_pod_large,
                         flavor: mocha_flavor,
                         pack_size: dozen_1_pack_size,
                         pod_size: pod_size_large)
cp133 = CoffeePod.create(description: 'large coffee pod, 3 dozen, mocha',
                         sku: 'CP133',
                         type: coffee_pod_large,
                         flavor: mocha_flavor,
                         pack_size: dozen_3_pack_size,
                         pod_size: pod_size_large)
cp141 = CoffeePod.create(description: 'large coffee pod, 1 dozen, hazelnut',
                         sku: 'CP141',
                         type: coffee_pod_large,
                         flavor: hazelnut_flavor,
                         pack_size: dozen_1_pack_size,
                         pod_size: pod_size_large)
cp143 = CoffeePod.create(description: 'large coffee pod, 3 dozen, hazelnut',
                         sku: 'CP143',
                         type: coffee_pod_large,
                         flavor: hazelnut_flavor,
                         pack_size: dozen_3_pack_size,
                         pod_size: pod_size_large)
ep003 = CoffeePod.create(description: 'espresso pod, 3 dozen, vanilla',
                         sku: 'EP003',
                         type: espresso_pod,
                         flavor: vanilla_flavor,
                         pack_size: dozen_3_pack_size,
                         pod_size: pod_size_espresso)
ep005 = CoffeePod.create(description: 'espresso pod, 5 dozen, vanilla',
                         sku: 'EP005',
                         type: espresso_pod,
                         flavor: vanilla_flavor,
                         pack_size: dozen_5_pack_size,
                         pod_size: pod_size_espresso)
ep007 = CoffeePod.create(description: 'espresso pod, 7 dozen, vanilla',
                         sku: 'EP007',
                         type: espresso_pod,
                         flavor: vanilla_flavor,
                         pack_size: dozen_7_pack_size,
                         pod_size: pod_size_espresso)
EP013 = CoffeePod.create(description: 'espresso pod, 3 dozen, caramel',
                         sku: 'EP013',
                         type: espresso_pod,
                         flavor: caramel_flavor,
                         pack_size: dozen_3_pack_size,
                         pod_size: pod_size_espresso)
EP015 = CoffeePod.create(description: 'espresso pod, 5 dozen, caramel',
                         sku: 'EP015',
                         type: espresso_pod,
                         flavor: caramel_flavor,
                         pack_size: dozen_5_pack_size,
                         pod_size: pod_size_espresso)
EP017 = CoffeePod.create(description: 'espresso pod, 7 dozen, caramel',
                         sku: 'EP017',
                         type: espresso_pod,
                         flavor: caramel_flavor,
                         pack_size: dozen_7_pack_size,
                         pod_size: pod_size_espresso)
