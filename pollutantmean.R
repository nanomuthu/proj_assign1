pollutantmean <- function(directory, pollutant, id=1:322){
  file_list <- list.files(directory, full.names=TRUE)
  dat <- data.frame()
            for (i in id)
          {
            dat <- rbind(dat, read.csv(file_list[i]))
          }
         if (names(dat["sulfate"])==pollutant)
           
         {
           m_s <- mean(dat$sulfate, na.rm=TRUE)
           print(m_s)
         }  
         if (names(dat["nitrate"])==pollutant)
           
         { 
           m_n <- mean(dat$nitrate, na.rm=TRUE)
           print(m_n)
         }
}