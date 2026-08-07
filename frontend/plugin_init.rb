if ArchivesSpace::Application.respond_to?(:extend_aspace_routes)
  ArchivesSpace::Application.extend_aspace_routes(
    File.join(__dir__, 'routes.rb')
  )
else
  my_routes = [File.join(__dir__, 'routes.rb')]
  ArchivesSpace::Application.config.paths['config/routes'].concat(my_routes)
end

