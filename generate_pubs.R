library(dplyr)
library(RefManageR)
library(stringr)

# Journal articles - start with Pubmed

RefManageR::BibOptions(first.inits = TRUE, max.names = 9999, longnamesfirst = TRUE, style = "markdown", sorting="ydnt", no.print.fields=c("language", "ISSN"))
pubs <- RefManageR::ReadPubMed("Dark MJ", field = "auth", retmax=99999)


whaleref <- GetBibEntryWithDOI("10.1638/2012-0147R.1")

# Fix this stupid journal's record that messes everything up
whaleref$title <- sub("\\(.*\\{K", "{\textit{K", whaleref$title)
whaleref$title <- sub("E\\}.*\\)", "E}}", whaleref$title)

# Add publications that PubMed misses
pubs <- c(pubs, GetBibEntryWithDOI("10.1111/j.2042-3292.2012.00398.x"),
          GetBibEntryWithDOI("10.1016/j.vetimm.2020.110169"),
          GetBibEntryWithDOI("10.1111/vru.13072"),
          whaleref,
          BibEntry("Article",
                   key="Dornbusch_2018",
                   title="Atypical stenosing tenosynovitis of the abductor pollicis longus ascribed to proliferative fibrosis of the extensor retinaculum in a 10-year-old French Bulldog",
                   author="J.A. Dornbusch and D.D. Lewis and M.D. Winter and M.J. Dark",
                   journaltitle="Australian Veterinary Practitioner",
                   year="2018",
                   volume=48,
                   number=1,
                   pages={5--9})) +
  BibEntry("Article", key="Diehl_2022", title="Congenital hypospadias and vertebral malformation in a Barbados Blackbelly neonate",
           author="B. Diehl and F. Grosso and M. Iredale and M.J. Dark and C. Cabrera",
           journaltitle="Clinical Theriogenology",
           year="2022", volume=14, pages={22--25})

# Sort reverse chronological
pubs <- sort(pubs, sorting="ydnt")
WriteBib(pubs, "pubs.bib")

# Book chapters
BibOptions(check.entries=FALSE)
bib <- GetBibEntryWithDOI("10.1016/b978-0-12-416041-5.00024-x")
bib <- c(bib, GetBibEntryWithDOI("10.1007/978-3-540-74042-1_3"))

# Fix info
bib[2]$year=2009
bib[2]$editor=c(person("V. Nene"), person("C. Kole"))
WriteBib(bib, "books.bib")
