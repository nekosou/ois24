install.packages("ggplot2")
library(ggplot2)
# Load the ggplot2 package
library(ggplot2)

# Create a sample data frame
set.seed(42)
data <- data.frame(
  x = rnorm(100),
  y = rnorm(100),
  group = rep(letters[1:4], each = 25)
)

# Create a scatter plot with a regression line and facets
ggplot(data, aes(x = x, y = y, color = group)) +
  geom_point() +                    # Scatter plot points
  geom_smooth(method = "lm", se = FALSE) +  # Linear regression line without confidence interval
  facet_wrap(~ group) +             # Facet the plot by 'group' variable
  theme_minimal() +                 # Apply a minimal theme
  labs(
    title = "Scatter Plot with Regression Lines and Facets",
    x = "X-axis Label",
    y = "Y-axis Label",
    color = "Group"
  ) +
  theme(
    plot.title = element_text(hjust = 0.5),
    legend.position = "bottom"
  )
