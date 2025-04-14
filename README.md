# GRE Score vs. College Admission Probability

This project investigates the relationship between GRE scores and the chance of being admitted into graduate programs. Conducted as part of the MET CS 555 (Machine Learning) course at Boston University, the project applies simple linear regression and F-test statistical methods to determine the significance of GRE scores in the admission process.

## 📊 Dataset

The dataset contains 9 key features:

- GRE Score
- TOEFL Score
- University Rating
- SOP Strength
- LOR Strength
- CGPA
- Research Experience
- Chance of Admit

**Source**: [project-83.csv from R-Examples GitHub Repository](https://github.com/kiat/R-Examples/tree/master/projects/datasets)

## 🧠 Objective

To determine:
- Whether there is a significant linear relationship between GRE scores and the chance of admission.
- How strong that relationship is statistically (using correlation coefficient, ANOVA, residual analysis, and F-test).

## 🔬 Methodology

- **Exploratory Data Analysis**: Scatter plots, box plots, correlation matrix.
- **Statistical Modeling**: Simple Linear Regression using GRE as the independent variable.
- **Evaluation**: ANOVA table, p-values, confidence intervals, residual plots, histogram, Q-Q plot.

## 📈 Key Findings

- Correlation between GRE and chance of admit: **0.80**
- Linear Regression Equation: `Chance of Admit = 0.00998 * GRE Score - 2.436`
- F-Statistic: **720.6**, p-value: **< 2.2e-16** → Significant positive correlation
- Multiple R-squared: **0.644**, Adjusted R-squared: **0.643**

## 📂 Files Included

- `project_report.pdf` – Full statistical report
- `project_presentation.pdf` – Final presentation deck
- `project_proposal.docx` – Proposal overview
- `RPlots/` – All plots (scatter, residual, Q-Q, etc.)
- `code/` – R code for linear regression, F-test, plotting
- `dataset.csv` – Input dataset

## 👨‍💻 Author

**Shivesh Raj Sahu**  
Boston University | Spring 2023  
[LinkedIn Profile](https://www.linkedin.com/in/shivesh-raj-sahu-0555681a6/) 
