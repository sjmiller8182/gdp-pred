# Support for requiremetns file

#' Get requirements from file
#' 
#' @param path The path to the requirements file
#' 
requirements.get = function(path) {
  requrements <- c()
  con = file(path, "r")
  while ( TRUE ) {
    line <- readLines(con, n = 1)
    if ( length(line) == 0 ) {
      break
    }
    requrements <- c(requrements, line)
  }
  
  close(con)
  
  # drop comments and empty lines
  requrements[grep('^\\s*[^#]',requrements)]
}

#' Get requirements from file
#' 
#' @param path The path to the requirements file
#' @param update Update packages before installing new packages (recommended)
#' @param verbose Print detailed information
#' 
requirements.install = function(path,
                                update = TRUE,
                                verbose = TRUE) {
  
  if (update){
    update.packages()
  }
  
  requirements = requirements.get(path = path)
  
  # names of the installed packages are in the first column
  # from installed.packages
  installed.p <- installed.packages()[, 1]
  
  for (r in requirements){
    if (!(r %in% installed.p)){
      if (verbose) {
        cat(paste('\nInstalling ', r, sep = ''))
      }
      #install.packages(r)
    } # not in installed.p
    else {
      if (verbose) {
        cat(paste('\nSkipping ', r, '; requirement already satisified', sep = ''))
      }
    }
  } # for
}

# main if called as script
requirements.install('./requirements.txt')