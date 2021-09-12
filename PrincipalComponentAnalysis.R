

# matrix(1:100, nrow = 10, ncol = 10, byrow = TRUE)
# paste('a','b', sep = "")
# lambda = sample(x = 90:100, size = 5)
# lambda
rpois(5, lambda = sample(x = 10:1000, size = 1))

data.matrix <- matrix(nrow = 100, ncol = 10)
# data.matrix[1:10, ]  # first 10 rows

colnames(data.matrix) <- c(paste("wt", 1:5, sep = ""),
                           paste("ko", 1:5, sep = ""))

#wt - wild type samples  -- normal or everyday samples
#ko - knockout samples  -- missing a gene because we have knocked it out


row.names(data.matrix) <- c(paste("gene", 1:100, sep = ""))
head(data.matrix)

      for (i in 1:100){
        
          wt.values <- rpois(5, lambda = sample(10:1000, size = 1))
          ko.values <- rpois(5, lambda = sample(10:1000, size = 1))
          
          data.matrix[i, ] <- c(wt.values, ko.values)
      }
pca <- prcomp(data.matrix,scale. = TRUE)
pca

# By default, prcomp() expects the samples to be rows and the genes to be 
# columns, Since the sample in our data matrix are columns, and 
# the genes(variables) are rows we have to transpose the matrix using
# t() function

#Columns -- Sample
#Rows  -- Genes / (Variables)
#  So transposing the matrix will help us to achieve our goal

pca <- prcomp(t(data.matrix), scale. = TRUE)
pca

pca$x
plot(pca$x[, 1], pca$x[, 2])

pca$sdev

pca.variation <- pca$sdev ^ 2  #standard deviation = sqrt(variance)

pca.variation.percentage <- round(pca.variation/sum(pca.variation) * 100, 1)

barplot(pca.variation.percentage,
        main = "Scree Plot", xlab = "Principal Component",
        ylab = "Percentage Variation")



library(ggplot2)

# Sample = rownames(pca$x)
pca$x[, 1]
pca.data <- data.frame(Sample = rownames(pca$x),
                      X = pca$x[, 1],
                      Y = pca$x[, 2]
                       )
pca.data


ggplot(data = pca.data, aes(x = X, y=Y, label = Sample)) +
        geom_text() + 
        xlab(paste("PC1 - ", pca.variation.percentage[1],"%", sep = "")) +
        ylab(paste("PC2 - ",pca.variation.percentage[2], "%",sep = "")) +
        theme_bw() +
        ggtitle("My PCA Graph")  
                       


# Determine which gene have the largest effect on where samples are plotted in the above graph 

pca$x
pca$rotation


loading_scores_rotation <- pca$rotation[, 1] # we will look at the 
#loading scores for PC1 only, since it accounts for
# almost 90% of the variation in data 


#  
gene_scores <- abs(loading_scores_rotation)
gene_scores_ranked <- sort(gene_scores, decreasing = TRUE)
gene_scores_ranked

top_10_genes <- names(gene_scores_ranked[1:10])


pca$rotation[top_10_genes, 1] # pca$rotation[top_10_genes, PC1]


dev.off()

head(data.matrix)
rm(list = ls())




