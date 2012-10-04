desc "I'm going to blow up"
task :boom => :environment do
  Product.delete_all
  product = Product.create!(name: 'death star')
  ProductDecorator.decorate(product).boom!
end
