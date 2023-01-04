library(tibble)

edu <- tribble(
  ~ Degree, ~ Year, ~ Institution, ~ Where,
  "Ph.D. - Veterinary Microbiology and Pathology",
  "2008",
  "Washington State University",
  "Pullman, WA",

  "D.V.M.",
  "2001",
  "Michigan State University",
  "East Lansing, MI",

  "B.S. - Veterinary Medicine",
  "1999",
  "Michigan State University",
  "East Lansing, MI")

boards <- tribble(
  ~Year, ~Type, ~Desc,
  2011,
  "Diplomate",
  "American College of Veterinary Pathology")

training <- tribble(~Year, ~Who, ~What,
        2016,
        "Institute for Healthcare Communication",
        "Veterinary Communication Project Faculty Development Program",
        2022,
        "United States Department of Agriculture",
        "Equine Infectious Anemia (EIA) Testing Certification"
)

employment <- tribble(
  ~ Institution, ~ Position, ~ Year, ~ Where,
  "University of Florida College of Veterinary Medicine",
  "Executive Director, Veterinary Diagnostic Laboratories",
  "2019-Present",
  "Gainesville, FL",

  "University of Florida College of Veterinary Medicine",
  "Clinical Associate Professor",
  "2016-2019, \\\\ 2022-present",
  "Gainesville, FL",

  "University of Florida College of Veterinary Medicine",
  "Clinical Associate Professor",
  "2009-2016",
  "Gainesville, FL",

  "Washington State University College of Veterinary Medicine",
  "Post-DVM Graduate Research Assistant",
  "2001-2008",
  "Pullman, WA",

  "Animal Emergency Hospital of Kent County",
  "Associate Veterinarian",
  "2001-2002",
  "Grand Rapids, MI")


licenses <- tribble(
  ~State, ~Type, ~Year, ~LicenseNum,
  "Veterinarian", "State of Florida", "2009-Present", "VM10814",
  "Veterinarian", "State of Washington", "2002-2008", "VT00006950",
  "Veterinarian", "State of Michigan", "2001-2002", "6901008638")

honors <- tribble(
  ~Year, ~Type, ~Desc,
  2018,
  "Barbara Jean Thompson Award for Outstanding Service",
  "Davis / Thompson Foundation",

  2015,
  "Special Achievement Award for Research Teams, Laboratories or Agencies",
  "Florida Entomological Society",

  2006,
  "Graduate student travel grant",
  "American Society of Rickettsiology national meeting, Asilomar, CA",

  2006,
  "Graduate student travel grant",
  "First International Symposium on the Comparative Biology of the Alphaproteobacteria, Blacksburg, VA",

  2001,
  "Dr. Robert F. Langham Diagnostic Pathology Award",
  "Michigan State University College of Veterinary Medicine",

  2000,
  "Best Graduate Student Presentation",
  "39th Annual North Central Conference of Veterinary Laboratory Diagnosticians, East Lansing, MI")

teaching_locations <- tribble(
  ~ Location, ~ Description,
  "UF", "University of Florida - Gainesville, FL",
  "WSU", "Washington State University - Pullman, WA"
)

UFteaching <-   tribble(
  ~Position, ~Course, ~Class, ~Year, ~Info,
  "Lecturer",
  "VEM 5571",
  "Emerging Diseases Issues",
  "2009-Present",
  c("An overview of the pathologist’s role in emerging diseases, as well as information about the intersection of politics and science in emerging diseases.",
    "Review of animal agricultural bioterrorism", "Two classroom contact hours per semester, approximately 25 students per class"),

  "Lecturer",
  "VEM 5165",
  "Large Animal Pathology",
  "2010-Present",
  c("A review of diseases of porcine pathology, with a focus on diseases important for boards.",
    "Four classroom contact hours per semester, approximately 30 students per class"),

  "Lecturer",
  "VEM 5115",
  "Introduction to Histology and Embryology",
  "2014 – 2020",
  c("Team-taught the introduction to histology",
    "Covered an introduction to microscopy, epithelium, glands, connective tissue, bone, and skin",
    "A total of 5 classroom contact hours and 16 laboratory hours with 120 students"),

  "Coordinator",
  "",
  "USDA Foreign Animal and Emerging Disease Awareness Course",
  "June 2013",
  c("Coordinated UF contributions to this three-day course","Hosted bovine and avian necropsy wetlabs for 50 individuals each",
    "Out of 33 total course evaluations, 28 evaluated the necropsy wet lab",
    "Mean score – 4.6 out of 5",
    "The lab was ranked as the most beneficial part of the course by 10"),

  "Lecturer",
  "VEM 5162",
  "Systemic Pathology",
  "2010-2019",
  c("Hepatic and pancreatic pathology, including common diseases, pathophysiology, and clinical signs.",
    "Three classroom contact hours and four laboratory contact hours per semester, approximately 115 students per class"),

  "Lecturer",
  "VEM 5162",
  "Systemic Pathology",
  "2015-2019",
  c("Musculoskeletal and reproductive pathology, including common diseases, pathophysiology, and clinical signs.",
    "Three classroom contact hours and four laboratory contact hours per semester, approximately 115 students per class"),

  "Lecturer",
  "VEM 5164",
  "Small Animal Pathology",
  "2009-2019",
  c("A review of hepatic and pancreatic pathology, including common diseases, pathophysiology, and clinical signs.",
    "Two classroom contact hours per semester, approximately 70 students per class"))

WSUteaching <-   tribble(
  ~Position, ~Course, ~Class, ~Year, ~Info,
  "Facilitator",
  "Diagnostic Challenges",
  "VM 546",
  "2004-2007, 2013-2017, 2020",
  c("Coordinated cases with non-veterinarian clients",
    "Assisted students in formulating differential diagnoses and learning issues",
    "Reviewed and graded student performance",
    "Approximately twelve contact hours per year – two groups a semester with four to five students per group"),

  "Lecturer",
  "VM 536",
  "Veterinary Bacteriology and Mycology",
  "2005-2007",
  c("Normal gastrointestinal defenses, Escherichia coli, Salmonella spp., and Campylobacter jejuni",
    "Three contact hours per semester, approximately 100 students per class"),

  "Lecturer",
  "VM 546",
  "Systemic Pathology Gross Laboratory",
  "2007",
  c("Introduction, lymphatic system, review lab",
    "Twelve contact hours – four laboratory sections, each with 25 students"),

  "Lecturer",
  "VM 546",
  "Systemic Pathology Gross Laboratory",
  "2004",
  c("Taught all labs, co-wrote and administered the laboratory final",
    "Sixty contact hours – four laboratory sections, each with 25 students")
)

grad_students <- tribble(
  ~ Position, ~ Student, ~ Year, ~ Department, ~ Info,
  "Ph.D. Advisor", "Firas Abed, Ph.D.", "2014 – 2019",
  "Department of Infectious Diseases and Pathology", NA,

  "Committee member", "Lydia Sixta, M.S. Candidate", "2020 - current",
  "Department of Small Animal Clinical Sciences",
  "Major Advisor – Rowen Milner",

  "Committee member", "Eric Mccown, Ph.D. Candidate", "2013 - 2022",
  "Department of Infectious Diseases and Pathology",
  "Major Advisor – Anthony F. Barbet / Maureen Long",

  "Committee member", "Jeffrey Hertz, Ph.D.", "2014 - 2016",
  "Department of Entomology and Nematology",
  "Major Advisor – Phil Kaufman",

  "Committee member", "Katherine Sayler, Ph.D.", "2014",
  "Department of Infectious Diseases and Pathology",
  "Major Advisor – Anthony F. Barbet",

  "Committee member", "Junjie Liu, Ph.D.", "2012-2017",
  "Department of Infectious Diseases and Pathology",
  "Major Advisor – Maureen Long",

  "Committee member", "Liliana Crosby, Ph.D.", "2009-2014",
  "Department of Infectious Diseases and Pathology",
  "Major Advisor – Anthony F. Barbet",

  "Committee member", "Amanda Eiden, Ph.D.", "2010-2013",
  "Department of Entomology and Nematology",
  "Major Advisor – Phil Kaufman")

presentations <-
tribble(
  ~ Who, ~ When, ~ What, ~ Where, ~ Title,
  "American Society for Rickettsiology",
  "August 2010",
  "Dark, M.J., A.F. Barbet",
  "Stevenson, WA",
  "Multistrain Analysis of Anaplasma marginale",

  "Fifth International Meeting on Rickettsia and Rickettsial Diseases",
  "May 2008",
  "Dark, M.J.",
  "Marseille, France",
  "Characterization of genes implicated in rickettsial tick transmission",

  "American Society for Rickettsiology",
  "September 2006",
  "Dark, M.J.",
  "Asilomar, CA",
  "Comparative genomics of Anaplasma marginale strains",

  "39th Annual North Central Conference of Veterinary Laboratory Diagnosticians",
  "June 2000",
  "Dark, M.J., P. Venta, T.G. Bell, and K.A. Meek",
  "East Lansing, MI",
  "SNP-based analysis of a SCID Defect in a Family of Jack Russell terriers",

  "42nd Annual Meeting of the American Association of Veterinary Laboratory Diagnosticians",
  "October 1999",
  "Dark, M.J., J.  Kaneene, T.  Bell, R.  Walker, M. Bowman, and B. Steficek",
  "San Diego, CA",
  "An epidemiological study of Mycobacterium paratuberculosis in Michigan livestock"
)

invited_lectures <- tribble(
  ~ Who, ~ When, ~ What, ~ Where, ~ Title,

  "Davis-Thompson Foundation and American College of Veterinary Pathologists",
  "September 2021",
  "Introduction to Synoptic Reporting",
  "via Zoom",
  "Standardization of Veterinary Oncologic Pathology - Part II",

  "Davis-Thompson Foundation and American College of Veterinary Pathologists",
  "September 2021",
  NA,
  "via Zoom",
  "Standardization of Veterinary Oncologic Pathology - Part I",

  "Congresso Brasileiro de Patologia Veterinária and Davis-Thompson Foundation",
  "July 2021",
  NA,
  "Brazil (via Zoom)",
  "Standardization of Veterinary Oncologic Pathology - Synoptic Reporting",

  "Davis-Thompson Foundation",
  "July 2019",
  "Course Coordinator and Presenter",
  "Gainesville, FL",
  "Annual Gross Pathology of Domestic Animals Course",

  "International Veterinary Forensic Science Association",
  "May 2010",
  NA,
  "Orlando, FL",
  "Necropsy Techniques for Forensic Scientists"
)

university_service <- tribble(
  ~ What, ~When,
  "UF CVM Hospital Board", "2020 – Present",
  "UF CVM Hospital Management Committee", "2020 – Present",
  "University Infrastructure Committee", "2016–2019",
  "College Research Committee", "2009–2012, 2018–2019",
  "College Information Technology Committee", "2010–2019",
  "College Information Technology Committee Chair", "2015–2016",
  "Anatomic Pathology Resident Research Coordinator",	"2010–2019",
  "University Faculty Senate Information Technology Advisory Subcommittee",	"2013–2019",
  "University Faculty Senate - Senator", "2015–2019",
  "Anatomic Pathology Service Chief", "2016–2019",
  "College Resident and Internship Committee", "2015–2018",
  "University Student Technology Fee Grant Committee", "2016",
  "Anatomic Pathology Resident Coordinator", "2015–2016",
  "College Awards and Scholarship Committee",	"2012–2015",
  "Class of 2018 Faculty Advisor", "2014-2018")

grants <- tribble(
  ~Position, ~When, ~Title, ~PI, ~Info,
  "Co-Investigator for NIH grant AI042792, 5% FTE",
  "2015-2020",
  "“Tick Mammal Interface of Human Granulocytic Anaplasmosis”",
  NA,
  "Ulrike Munderloh PI, $3,083,868 total cost",

  "Co-Investigator for Department of Defense grant PR130999, 5% FTE",
  "2014-2017",
  "“Gene Therapy for Prost-traumatic Osteoarthritis”",
  NA,
  "Steve Ghivizzani PI, $500,000 direct costs per year",

  "Primary investigator for USDA TSTAR grant",
  "2010-2012",
  "“Improved surveillence and control for the tropical bont tick Amblyomma americanum”",
  NA,
  NA,

  "Primary investigator for NIH grant K08-AI064162",
  "2005-2008",
  "“Anaplasma marginale genes determining tick transmission.”",
  "",
  "Direct costs: $380,381 total",

  "Trainee under NIH T32-AI07025 Immunology Training Grant",
  "2004–2005",
  NA,NA,NA

)

orgs <- tribble(
  ~Position, ~When, ~Title, ~PI, ~Info,
  "Davis-Thompson Foundation",
  "2017-2025",
  "Member, Board of Directors",
  "",
  "Migrated Noah's Arkive and established whole-slide imaging archive",

  "Veterinary Cancer Guidelines and Protocols",
  "2021-Present",
  "Member, Board of Directors",
  NA,
  NA,

  "Editorial Board of Infectious Agents and Disease",
  "2022-present",
  "Review Editor",
  NA,
  "Frontiers in Medicine, Frontiers in Public Health, and Frontiers in Microbiology",

)

adhoc <-
  c(
    "Medical and Veterinary Entomology",
    "Frontiers in Veterinary Science",
    "Veterinary Pathology",
    "Vaccine",
    "Veterinary Parasitology",
    "Equine Veterinary Journal",
    "Molecular Biology Reports",
    "Parasites and Vectors",
    "Vaccines: Benefits and Risks",
    "PLoS ONE",
    "Revista Brasileira de Parasitologia Veterinária (Brazilian Journal of Veterinary Parasitology)",
    "American Journal of Veterinary Research",
    "BMC Bioinformatics",
    "International Journal Of Biotechnology",
    "British Microbiology Research Journal",
    "BMC Research Notes",
    "Journal of Emerging Investigators",
    "Parasites and Vectors",
    "Epidemiology and Infection",
    "Veterinary Medicine: Research and Reports",
    "Drug Design, Development and Therapy",
    "Biotechnic & Histochemistry",
    "International Journal of Molecular Sciences",
    "Clinical Case Reports",
    "Journal of Small Animal Practice",
    "Ciência Rural",
    "Cancers",
    "Applied Sciences",
    "Animals",
    "Veterinary Surgery"
  )

adhoc <- paste0("* ", adhoc)
adhoc <- split(adhoc, ceiling(seq_along(adhoc)/(length(adhoc)/2)))

if (length(adhoc[[1]]) > length(adhoc[[2]]))
{
  adhoc[[2]] <- append(adhoc[[2]], "")
}

if (length(adhoc[[1]]) < length(adhoc[[2]]))
{
  adhoc[[1]] <- append(adhoc[[1]], "")
}

adhoc <- data.frame(adhoc)

names(adhoc) <- NULL

