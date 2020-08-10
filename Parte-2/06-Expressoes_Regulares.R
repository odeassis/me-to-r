# Expressões Regulares

# grep(pattern, x, ignore.case = FALSE, perl = FALSE, value = FALSE, fixed = FALSE, useBytes = FALSE, invert = FALSE)
# grepl(pattern, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# sub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gsub(pattern, replacement, x, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# regexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)
# gregexpr(pattern, text, ignore.case = FALSE, perl = FALSE, fixed = FALSE, useBytes = FALSE)

str <- c("Expressões", "regulares", "em linguagem R", 
         "permitem a busca de padrões", "e exploração de textos",
         "podemos buscar padrões em dígitos",
         "como por exemplo",
         "10992451280")

length(str)
str

summary(str)

# grep()
grep('ex',  str, value = FALSE)
grep('ex',  str, value = TRUE)
grep('\\d', str, value = FALSE)
grep('\\d', str, value = TRUE)

# grepl()
grepl('\\d+', str)
grepl('\\D',  str)

# gsub
gsub('em', '|', str)
gsub('ex', 'EX', str, ignore.case = TRUE)

# sub()
sub('em', 'EM', str)

# regexpr()
frase <- "Isso he uma frase"
regexpr(pattern = "u", frase)

# gregexpr()
gregexpr(pattern = "u", frase)

str2 <- c("2678 é maior que 45 - @???!$","Vamos escrever 14 scripts R")

# gsub()
gsub('\\d', "", str2)
gsub('\\D', "", str2)
gsub('\\s', "", str2)
gsub('[iot]', 'Q', str2)
gsub('[[:punct:]]', "", str2)
gsub('[^@]', "", str2)