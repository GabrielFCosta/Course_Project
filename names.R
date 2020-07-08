## reading the column names vector (features.txt)
cols <- read.table("./dataset/features.txt")
cols <- cols$V2
## appending subject and activity to column labels vector
cols <- append(cols,c("activity","subject"))
