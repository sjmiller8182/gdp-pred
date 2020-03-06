
# import the rendering lib
library(rmarkdown)
library(yaml)
library(git2r)

# read in packing list
# and build settings
cfg <- yaml::read_yaml('./_build_config.yml')

cat('\nBuilding')

# render each Rmd file
for (f in cfg$packing_list){
  cat(paste('\nBuilding', f))
  rmarkdown::render(f,
                    output_format = cfg$build_settings$format,
                    output_dir = cfg$build_settings$output_dir,
                    quiet = TRUE)
}

cat(paste('\nPushing new build to remote'))

# add and commit the new build
git2r::add(path = cfg$build_settings$output_dir)
git2r::commit(message = paste('New build of docs', Sys.Date()))
git2r::push()