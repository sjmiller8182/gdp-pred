
# import the rendering lib
library(rmarkdown)

# find all the Rmd files
files.rmd <- Sys.glob('./analysis/*.Rmd')

print(files.rmd)

# render each Rmd file
for (f in files.rmd){
  rmarkdown::render(f,
                    output_format = 'html_document',
                    output_dir = './docs')
}
