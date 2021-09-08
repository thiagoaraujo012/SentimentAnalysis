install.packages("syuzhet")
library(syuzhet)



texto <- c("Thiago Araujo						

LinkedIn:		www.linkedin.com/in/thiagoaraujodasilva
E-Mail: 		thiago.araujos@usp.br	
Cell phone: 		+55 (21) 99556-1696
Date of Birth: 		19.11.1990
Marital Status:    	Married
Address: 		Rio de Janeiro, Brazil

Main and Last practical Experiences
06/2021 - present       Demarco, (Remote), Brazil
Multinational Consulting, tech and educational company with more than 200 clients around Latin America
			KPI and Data Analyst
Compliance sector. Analysis of the coworkers' performance through daily documentation points. Complex data analysis (+150k rows/day) using Excel and Power BI apps. 
Responsible for automating one process with Python, increasing productivity of the team.

01/2019 - 06/2021 	Restaurant of the Hospital Federal Cardoso Fontes, Rio de Janeiro, Brazil
Private Restaurant located at one of the biggest Hospitals in the city.

Financial Manager | Operations Analyst

Achievements: 
- Built of dashboards to analyze finance stage, as sales, expenses, revenues, hiring processes, since from the creation of the datasets to the final report to C-Level audience (board), through Microsoft Excel and Power BI apps. Translation of numbers into actions. Responsible for gathering remuneration and payment slip data.
06/2016 - 04/2019 	New Life Christian Church (National Headquarter), Rio de Janeiro, Brazil
	
Christian church with more than 100 affiliates around Brazil and Europe.

Staff and Operational Supervisor

. Supervision of the company's main activities, such as food and tech purchases; Team leader of 10 workers; Responsible for the "bridge" between the company's national leadership (di-rectors and presidency), suppliers, and employees; collect data to make better decisions for the group.
Achievements:
- Proposed and performed new administrative routines to improve productivity and better results, focusing on cost reductions. Created a new working time system, working fewer hours and bringing better results.

02/2016 - 08/2020     Lab in Hands Startup, Rio de Janeiro, Brazil
Co-Founder
                                            Co-founded a tech startup for doctors to collect the best practices about new drugs through a smartphone app. The app is in the MVP process.  



Education
03/2021 - 12/2022	Universidade de Sao Paulo, Sao Paulo, Brazil
Data Science and Analytics (Online M.B.A.), Graduate Student
Specializations: Programming in R; Principles and applications in Machine Learning, Big Data, Data Analysis, clustering, data mining and all the Data Science fundaments.
08/2015 - 01/2018	Universidade Estacio de Sa, Rio de Janeiro, Brazil
Financial Management (Bachelor), GPA: 8.0
Specializations: Business skills to manage the company, financial, bank and tributary abilities and fundaments and mathematics, economy, and statistics applications.

Voluntary Work
06/2016 - 06/2020     Segunda Instrumental, Rio de Janeiro, Brazil
"Marketing Analyst | Social Media Content Creator"
Volunteer as Marketing Analyst, creating Facebook metrics to reach people by age, gender, and interests. The main tool to analyze is Facebook Business Manager. I also developed and created social media content, banners, and visual arts in Photoshop and posting on Facebook and Instagram. You can check on @segundainstrumental
Languages, computer skills and courses
Portuguese                      Native
English	(C1 - Advanced) EF SET English Certificate 68 - 2021
Spanish	B1
German	A1

Microsoft Office	Power BI, Excel, Word, Power Point.

Data Processing	R, Python, SQL, DAX, Power Query. In progress: AWS, Google Cloud and Azure.

Marketing		Marketing Analysis (University of Virginia), Google Analytics, Facebook Business Manager.

Hobbies
Interests:                           Playing football with friends, playing the drums, meet new cities and countries with my wife, 
  play with my dog, visit cinema and museums.
	 

 
Thiago Araujo
Rio de Janeiro, 22.07.2021				

")

sentimento <- get_nrc_sentiment(texto)
sentimento

?barplot
# colSum = soma dos valores das colunas#

color <- colorRampPalette(c("darkblue","lightblue"))
color(10)
barplot(colSums(sentimento), las = 2, ylab = "Quantidade", col=color(10), main ="Sentimento") 

sentimento

todo_texto <- get_sentences(texto)
todo_texto
summary(todo_texto)
class(todo_texto)

vector_sent = get_sentiment(todo_texto, method = "syuzhet")
vector_sent
summary(vector_sent)
boxplot(vector_sent)
View(vector_sent)


sentimento$positive        
install.packages("pander")
library(pander)
pander::pandoc.table(sentimento[,1:8], split.table = Inf)

