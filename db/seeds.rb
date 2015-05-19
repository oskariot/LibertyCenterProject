# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Author.create [
                  {:name => 'Stefan Molyneux'},
                  {:name => 'Adam Kokesh'},
                  {:name => 'Ayn Rand'},
                  {:name => 'Murray Rothbard'},
                  {:name => 'Ludwig von Mises'},
                  {:name => 'Voltaire'}
]
Category.create [
                    {:name => 'Politics'},
                    {:name => 'Ethics'},
                    {:name => 'Freedom'},
                    {:name => 'Religion'},
                    {:name => 'Philosophy'},
                    {:name => 'Government'},
                    {:name => 'Anarchism'},
                    {:name => 'Peaceful parenting'},
                    {:name => 'Voluntaryism'},
                    {:name => 'Economy'},
                    {:name => 'Society'}
]
Citation.create [
                  {
                      :body => 'Force and mind are opposites; morality ends where a gun begins.',
                      author: Author.find_by_name('Ayn Rand'),
                      categories: [
                          Category.find_by_name('Ethics'),
                          Category.find_by_name('Philosophy'),
                          Category.find_by_name('Voluntaryism')
                      ]
                  },
                  {
                      :body => 'Good ideas don\'t require force',
                      author: Author.find_by_name('Adam Kokesh'),
                      categories: [
                          Category.find_by_name('Voluntaryism'),
                          Category.find_by_name('Peaceful parenting'),
                          Category.find_by_name('Freedom'),
                          Category.find_by_name('Politics')
                      ]
                  },
                  {
                      :body => 'There is nothing that is going to make people hate you more, and love you more, than telling the truth.',
                      author: Author.find_by_name('Stefan Molyneux'),
                      categories: [
                          Category.find_by_name('Philosophy'),
                      ]
                  },
                  {
                      :body => 'I don\'t agree with what you say but i will defend to the death your right to say it',
                      author: Author.find_by_name('Voltaire'),
                      categories: [
                          Category.find_by_name('Freedom'),
                          Category.find_by_name('Philosophy')
                      ]
                  },
                  {
                      :body => 'Anybody who tries to change society without examining the family is trying to push a shadow without moving a statue.',
                      author: Author.find_by_name('Stefan Molyneux'),
                      categories: [
                          Category.find_by_name('Peaceful parenting'),
                          Category.find_by_name('Freedom')
                      ]
                  },
                  {
                      :body => 'I define anarchist society as one where there is no legal possibility for coercive aggression against the person or property of any individual.',
                      author: Author.find_by_name('Murray Rothbard'),
                      categories: [
                          Category.find_by_name('Anarchism'),
                          Category.find_by_name('Politics'),
                          Category.find_by_name('Voluntaryism'),
                          Category.find_by_name('Freedom')
                      ]
                  },
                  {
                      :body => 'Whoever wishes peace among peoples must fight statism.',
                      author: Author.find_by_name('Ludwig von Mises'),
                      categories: [
                          Category.find_by_name('Anarchism'),
                          Category.find_by_name('Politics'),
                          Category.find_by_name('Government')
                      ]
                  },
                  {
                      :body => 'If history could teach us anything, it would be that private property is inextricably linked with civilization.',
                      author: Author.find_by_name('Ludwig von Mises'),
                      categories: [
                          Category.find_by_name('Economy'),
                          Category.find_by_name('Freedom')
                      ]
                  },
                  {
                      :body => 'The smallest minority on earth is the individual. Those who deny individual rights cannot claim to be defenders of minorities.',
                      author: Author.find_by_name('Ayn Rand'),
                      categories: [
                          Category.find_by_name('Ethics'),
                          Category.find_by_name('Society'),
                          Category.find_by_name('Freedom')
                      ]
                  }
]
Profile.create [
                  {
                      :full_name => 'Alissa Zinowiewna Rosenbaum',
                      :birth_date => '1905-02-02',
                      :death_date => '1982-03-06',
                      :photo_url => 'http://upload.wikimedia.org/wikipedia/en/3/32/Ayn_Rand1.jpg',
                      :about => 'Talented writer. Author of the famous novel \'Atlas Shrugged\'',
                      author: Author.find_by_name('Ayn Rand')
                  },
                  {
                      :full_name => 'Stefan Basil Molyneux',
                      :birth_date => '1966-09-24',
                      :photo_url => 'http://upload.wikimedia.org/wikipedia/commons/f/fd/Stefan_Molyneux_2014-02-10.jpg',
                      :about => 'Philosopher. Owner of Freedomainradio (FDR).',
                      author: Author.find_by_name('Stefan Molyneux')
                  },
                  {
                      :full_name => 'Francois-Marie Arouet',
                      :birth_date => '1694-01-01',
                      :death_date => '1778-05-30',
                      :photo_url => 'http://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Atelier_de_Nicolas_de_Largilli%C3%A8re%2C_portrait_de_Voltaire%2C_d%C3%A9tail_%28mus%C3%A9e_Carnavalet%29_-002.jpg/640px-Atelier_de_Nicolas_de_Largilli%C3%A8re%2C_portrait_de_Voltaire%2C_d%C3%A9tail_%28mus%C3%A9e_Carnavalet%29_-002.jpg',
                      :about => 'French Enligthment writer.',
                      author: Author.find_by_name('Voltaire')
                  },
                  {
                      :full_name => 'Adam Charles Kokesh',
                      :birth_date => '1982-02-01',
                      :photo_url => 'http://upload.wikimedia.org/wikipedia/en/thumb/e/e7/Kokesh2013.jpg/800px-Kokesh2013.jpg',
                      :about => 'Libertarian activist.',
                      author: Author.find_by_name('Adam Kokesh')
                  },
                  {
                      :full_name => 'Murray Newton Rothbard',
                      :birth_date => '1926-03-02',
                      :death_date => '1995-01-07',
                      :photo_url => 'http://upload.wikimedia.org/wikipedia/commons/7/7e/MurrayBW.jpg',
                      :about => 'Austrian economist. Political theorist.',
                      author: Author.find_by_name('Murray Rothbard')
                  },
                  {
                      :full_name => 'Ludwig Heinrich Edler von Mises',
                      :birth_date => '1881-09-29',
                      :death_date => '1973-10-10',
                      :photo_url => 'http://upload.wikimedia.org/wikipedia/commons/f/f0/Ludwig_von_Mises.jpg',
                      :about => 'Austrian economist. Author of the famous book \'Human action\'',
                      author: Author.find_by_name('Ludwig von Mises')
                  },
]

