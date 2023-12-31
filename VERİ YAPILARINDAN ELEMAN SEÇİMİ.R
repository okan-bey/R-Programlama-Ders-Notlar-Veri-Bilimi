
x<-c(1,2,3,4)
#Birden fazla eleman ekleme
x[5:10]<-8 
x

#11.eleman NA olur.
x[12]<-7 
x
#Örnek
x[c(13,14)]<-c(11,12)
x

##Listelerde eleman seçimi #Listelerden değiştirmek için 2 tane [[]] koyulur.
liste<-list(11,12,c("A","B","C"))
x[1]
x[[1]]
x[3][2] #Null değerrini verir #Yanlış Kullanım.
x[[3]][2]#Doğru kullanım !


y <- list('A' = c(1,2,3,4) , 'B' = c(11,22,33,44))

y
y['A'] #İndisinin listesini verir.
class(y['A']) #sınıfı listedir.

y[['A']]
class(y[['A']]) #Numeric.


y$B #y'nin içinden b'yi çeker.
y$A #y'nin içinden a'yı çeker. !!! Önemli

class(y$B)
class(y$A)
#Vektörlü dizide eleman silme yöntemi #NULL Yöntemi
x<-list(1,2,3,c(11,22,33))
x[[1]]<-NULL #1.elemanı siler

x[[4]][-2] #Listenin içindeki vektörden eleman silme
#Kalıcı hale getirmek için
x[[4]]<-x[[4]][-2]
x

#Listelere eleman ekleme
x<-list(1,2,3)
x[4]<-4
x[[5]]<-c(7,8,9) #Vektör ataması yaparsan çift köşeli parantez koy.
x

# Matris oluşturma
m <- matrix(c(11,12,13,14) , nrow = 2 , ncol=2 , byrow = TRUE)


# Matrislerde seçim

m1 <- matrix(c(12,22,34,45,45,56,57,68) , nrow=2 , ncol=4 , byrow=TRUE)

m1

# [1,] [,1] = [1,1]
# Birinci satır ve birinci sütun

m1[1,1]
m1[2,4]
m1[2,5]

# Matrisin parçalarını seçmek !!!!!!!!!!!1

m1[c(1,2) , c(1,2)]  #1.satır ve 2.satırı,1.sütun ve 2.sütunu
class(m1[c(1,2) , c(1,2)])

m1[1:2,2:4] #Aynı mantık belli bir aralık verilerek yapıldı.
m1[c(1) , c(1,3,4)]

#MATRİSLERDE SATIR VE SÜTUN KALDIRMA
m <- matrix(c(1,2,3,4) , nrow=2 , ncol=2 , byrow=T)
m

class(m[,-2])
class(m)

m <- m[,-2]
as.matrix(m) #Matrixe çevirebilirsin.

m1 <- matrix(c(11,22,33,44,55,66,77,88) , 4 , 2, T)
m1

# TEk bir satrı çıkartma 
m1[-3 , ] #3.satır çıakr sütunlar aynı kalır.

# Çoklu satır çıkartma işlemleri
m1[-c(2,3) , ] #2 ve 3.satırları siler sütunlara dokunmaz.
m1[-c(2:3) , ]
m1[-c(2:4) , ]

# Değerleri NA'ya çevirme
m1[2,2] <- NA
m1
m1[c(1,2) , 1] <- NA
m1
#Yeni değer atama
m1[2,2] <- 123
m1

m2 <- m1[-4,]
m2
#MATRİSLERE SATIR VE SÜTUN EKLEME
m <- matrix(c(1,2,3,4) , 2,2,T)
m

# Yanlış kullanım
m[ , 3] <- c(1,2) 

# Doğru kullanım

cbind(m , c(1,2)) #column bind # column ekler. #1) işlenecek matris 2) değerler.
rbind(m , c(1,2)) # row ekler.Aynısı

cbind(m , c(1,2 ,3)) #Çalışmaz !
rbind(m , c(1,2 , 3))#Çalışmaz !

m <- cbind(m , c(1,2)) #Kaydetmek için tekrar atamalısın.
m <- rbind(m , c(1,2 , 3 , 5))
m

#DATA FRAMELERDE ELEMAN SEÇİMİ
df <- data.frame('A' = c(12,13,14,15,16) , 'B' = c('A' , 'B' , 'C' , 'D' , 'E'))
df

df[1,1] #1.satır 1.sütun
df[1,2] #1.satır 2.sütun

df[,2]  #tüm satırlar 2.sütun
df[,1]  #tüm satılar 1.sütun
df[5,]  #5.satır tüm sütunlar

class(df[,2])
class(df[5,])

df2 <- data.frame( 'A' = c(12,13,14,15,16) , 
                   'B' = c('A' , 'B' , 'C' , 'D' , 'E'),
                   'C' = c(45,23,67,89,24))

df2

df2[,c(2,3)] #tüm satılar 2. ve 3.sütunlar
class(df2[,c(2,3)])

df2[2] #2.sütun
df2[1] #1.sütun
class(df2[1])

df2[['A']]
df2[,1]

class(df2[['A']])
class(df2[,1])


df2[,2] # Vektor
df2[2] # Data frame
df2['B'] # Data frame
df2[['B']] # Vektor

df2$A # vektor #df2'den A sütunu seçilir.
df2$B
df2$C

df2[c('A' , 'B')]
df2[[c('A' ,'B')]] # HAtalı kullanım 

#DATA FRAMELERDEN SATIR VE SÜTUN KALDIRMA


df <- data.frame('A' = c(1,2,3,4,5) , 'B' = c(4,5,6,7,8))
df

# İkinci sütunun çıkartılmış seçimi
df[-2]
df[-1]

df[2]
# Kaydetme kalıcı halde getirmek için tekrar atama işlemi
df <- df[-2]
df

df <- data.frame('A' = c(1,2,3,4,5) , 'B' = c(4,5,6,7,8))

df[,1]
df[,-1]

df[-1]

df[2] <- NULL
df

df <- data.frame('A' = c(1,2,3,4,5) , 'B' = c(4,5,6,7,8))
df['A'] <- NULL
df

df <- data.frame('A' = c(1,2,3,4,5) , 
                 'B' = c(4,5,6,7,8),
                 'C' = c(11,222,32,41,54))

df[-c(1,3)] #1.ve 3.sütunu kaldırır.
df[,-c(1,3)] # Sonucu vektordur #tüm satırlar kalır 1.ve 3.sütun gider.
df[,-3] # Bu bir data frame olur

df[c('A' ,'B')] <- NULL
df

df <- data.frame('A' = c(1,2,3,4,5) , 
                 'B' = c(4,5,6,7,8),
                 'C' = c(11,222,32,41,54))

df <- df[-1,] #1.satırı çıkatır sütunlar kalır
df[1,]

df[-c(2:4) ,]
df[-c(1,4),]

#DATA FRAME ELEMAN DEĞİŞTİRME
df <- data.frame('A' = c(1,2,3,4) , 'B' = c(4,5,6,7))
df

df[1,2] <- 20
df

df[2,2] <- 21
df

df[c(3,4) , 2 ] <- 35
df

df[1, c(1,2)] <- 35

df[1, c(1,2)] <- c(22,44)
df

df[ c(3,4), 1] <- c(33,44)
df

#DATA FRAME YENİ SATIR VE SÜTUN EKLEME


df <- data.frame('A' = c(1,2,3,4) , 
                 'B' = c('A' , 'B' , 'C' , 'D'),
                 'C' = c(11,22,33,44))


cbind(df , 'D' = c(33,44,55,66))
df
df <- cbind(df , 'D' = c(33,44,55,66))
df

df[5] <- c(12,13,14,15) #V5 Adında bir sütun ekler
df
df$Yeni <- c('F' , 'G' , 'H' , 'Z') #YENİ ADINDA BİR SÜTUN EKLER
df

df['Yeni2'] <- c(1,2,3,4) #YENİ2 ADINDA SÜTUN EKLER.
df

# YEni satır ekleme 

df[5 , ] <- c(1,2,3,4,5,6 , 7)
df
df[6 , ] <- c(1,'A',3,4,5,6 , 7)
df

df[5,2] <- 'T'
df
class(df[,2])

df[7 , ] <- c(1,'C',3,4,5,6 , 7)
df
df[5,2] <- 'A'
df
class(df$Yeni)

df
rbind(df , data.frame('A' = c(1) , 'B' = c('C') , 
                      'C' = c(23) , 'D' = c(13) , 'V5' = c(23),
                      'Yeni'= c('F') , 'Yeni2' = c(13) ))

rbind(df , data.frame('A' = c(1 ,2) , 'B' = c('C' ,'A') , 
                      'C' = c(23 ,24) , 'D' = c(13 ,14) , 'V5' = c(23 , 24),
                      'Yeni'= c('F' ,'A') , 'Yeni2' = c(13 , 14) ))

eklenecek <- data.frame('A' = c(1 ,2) , 'B' = c('C' ,'A') , 
                        'C' = c(23 ,24) , 'D' = c(13 ,14) , 'V5' = c(23 , 24),
                        'Yeni'= c('F' ,'A') , 'Yeni2' = c(13 , 14) )

eklenecek

rbind(df , eklenecek)

eklenecek <- data.frame('A' = c(1 ,2) , 'B' = c('C' ,'T') , 
                        'C' = c(23 ,24) , 'D' = c(13 ,14) , 'V5' = c(23 , 24),
                        'Yeni'= c('F' ,'A') , 'Yeni2' = c(13 , 14) )

df <- rbind(df , eklenecek)


eklenecekSutun <- data.frame('J' = c(1,2,3,4,5,6,7,8,9) , 'E' = c(1,2,3,4,5,6,7,8,9))
eklenecekSutun

cbind(df , eklenecekSutun)
