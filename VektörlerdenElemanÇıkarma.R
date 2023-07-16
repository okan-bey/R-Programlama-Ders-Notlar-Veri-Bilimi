## Vektörlerden eleman çıkarma
x <- c(12,13,14,15,16)
x

# Eleman Seçimi
x[1]
x[5]

# Elemandan indexe göre çıkarma işlemi
x[-1] #1.elemanı çıkartır
x[-5] #5.elemanı çıkartır

# Unutma ! çıkarma işlemini kalıcı hale getirmek için tekrar değişkene atamalısın.

x = x[-1]
x = x[-4]
x

x <- c(12,13,14,15,16)
y <- x[-1] çıkarılmış elemanlı diziyi başka bir değişkene atayabilirsiniz.
y
# NOT: 
# Tek satırda bir den fazla komut çalıştırmak için x;y kullanabilirsin.
x;y

x[c(1,2,3)] # 1.2. ve 3.indisleri bu şekilde çıkartabilirsin.
x[c(-1,-2,-3)]# çıkarma işlemi de aynı şekilde yapılır.

#Buraya dikkat et !
cikartilacakindex <- c(2,3,1)
x[-cikartilacakindex]

c <- x[-cikartilacakindex]
c

1:3 # 1 den 3'e kadar dizi olu??turur.
x[1:3] #x dizisinden 1 den 3 e kadar olan elemanlar se??er.

# Ardışık indexleri çıkartma
-1:3
x[-1:3] # YANLI?? ! R da -1.indis yoktur. 
x[-c(1:3)] #Doğrusu budur.


