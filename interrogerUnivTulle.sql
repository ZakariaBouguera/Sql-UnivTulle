use univTulle ; 
"1/"select * from Suivre where ine = "0000000001A";
"2/"select * from Suivre where ine != "0000000001A";
"3/"select * from Suivre
"4/"select AVG(note), numEval from Passer where numEval = "1";
"5/"select  nom, prenom, AVG(note) from Etudiant inner join Passer on Passer.ine = Etudiant.ine where nom = "KEHRE";
"6/"select nom, prenom, AVG(note) from Passer inner join Etudiant on Passer.ine = Etudiant.ine inner join Evaluation on Evaluation.numEval = Passer.numEval where idModule = "3" group by nom, prenom;
"7 je n'ai pas bien compris la question"

