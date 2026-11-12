# 1. Buat Data & Baca CSV (Soal 1)
df <- data.frame(
  Tahun  = 2010:2020,
  Gula   = c(50, 70, 100, 120, 110, 100, 120, 135, 140, 150, 145),
  Minyak = c(80, 85, 90, 100, 120, 125, 135, 140, 150, 190, 195),
  Sabun  = c(55, 70, 80, 95, 80, 100, 105, 110, 120, 100, 130)
)
write.csv(df, "datatoko.csv", row.names = FALSE)
datatoko <- read.csv("datatoko.csv")
print(datatoko)

# 2. Ringkasan Statistik Deskriptif (Soal 2)
summary(datatoko[, 2:4])

# 3. Visualisasi Grafik 2x2 (Soal 3)
par(mfrow = c(2, 2))
plot(datatoko$Tahun, datatoko$Gula, type="o", col="blue", main="Penjualan Gula", xlab="Tahun", ylab="Unit")
plot(datatoko$Tahun, datatoko$Minyak, type="o", col="red", main="Penjualan Minyak", xlab="Tahun", ylab="Unit")
plot(datatoko$Tahun, datatoko$Sabun, type="o", col="darkgreen", main="Penjualan Sabun", xlab="Tahun", ylab="Unit")

# Plot Gabungan
plot(datatoko$Tahun, datatoko$Minyak, type="o", col="red", ylim=c(40,210), main="Gabungan Penjualan", xlab="Tahun", ylab="Unit")
lines(datatoko$Tahun, datatoko$Gula, type="o", col="blue")
lines(datatoko$Tahun, datatoko$Sabun, type="o", col="darkgreen")
legend("topleft", legend=c("Minyak","Gula","Sabun"), col=c("red","blue","darkgreen"), lty=1, bty="n")
par(mfrow = c(1, 1))
