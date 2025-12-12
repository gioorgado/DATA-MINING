setwd("C:\\Users\\gioor\\Desktop\\DM_Orgado")
text_data <- readLines("feedback.txt")

install.packages("tm")
install.packages("SnowballC")
install.packages("wordcloud")
install.packages("RColorBrewer")

library(tm)
library(SnowballC)
library(wordcloud)
library(RColorBrewer)

corpus <- Corpus(VectorSource(text_data))

corpus <- tm_map(corpus, content_transformer(tolower))
corpus <- tm_map(corpus, removeNumbers)
corpus <- tm_map(corpus, removePunctuation)
corpus <- tm_map(corpus, removeWords, stopwords("english"))
corpus <- tm_map(corpus, stripWhitespace)
corpus <- tm_map(corpus, stemDocument)

tdm <- TermDocumentMatrix(corpus)

m <- as.matrix(tdm)
word_freq <- sort(rowSums(m), decreasing = TRUE)

freq_df <- data.frame(
  word = names(word_freq),
  freq = word_freq,
  row.names = NULL
)

head(freq_df, 10)

png("wordcloud.png", width = 800, height = 600)

wordcloud(
  words = freq_df$word,
  freq = freq_df$freq,
  min.freq = 2,
  max.words = 1000,
  colors = brewer.pal(8, "Dark2"),
  random.order = FALSE
)

dev.off()

rare_words <- subset(freq_df, freq == 1)

png("wordcloud_rare.png", width = 800, height = 600)

wordcloud(
  words = rare_words$word,
  freq = rare_words$freq,
  min.freq = 1,
  max.words = nrow(rare_words),
  colors = brewer.pal(8, "Dark2"),
  random.order = FALSE
)

dev.off()

