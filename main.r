data <- read.csv("data.csv")

png(file="scatterplot.png")

print("The absorption of methylene blue peaks at around 650-700 nm, which corresponds to the color of red or orange.")
cat("The values of the x-axis ranges from", min(data$x), "-", max(data$x), "nm.", "\n")
cat("The values of the y-axis ranges from", min(data$y), "-", max(data$y), "cm^-1.", "\n")

plot(x = data$x, y = data$y,
    xlab = "Wavelength of Light (nm)",
    ylab = "Absorption Coefficient (cm^-1 or M)",
    xlim = c(200,800),
    ylim = c(-100,100000),
    main = "Molar Extinction Coefficient for Methylene Blue in Water"
)

dev.off()
