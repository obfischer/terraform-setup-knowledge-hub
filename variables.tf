variable "var_knowledge_repositories" {
  type = map(object({
    description : string
    topics : list(string)
    public : bool
  }))
  default = {
    "knowledge-hub" = {
      description : "Antora-Hauptprojekt für den Wissenshub"
      public : true
      topics : ["antora", "asciidoctor"]
    },
    "maven-best-practices" = {
      description : "Antora-Modul für Best Practices für Apache Maven"
      public : true
      topics : ["antora", "asciidoctor", "maven", "apache-maven", "best-practices"]
    },
    "terraform-setup-knowledge-hub" = {
      description : "Terraform-Projekt für die Knowledgebase-Hub Repositorys"
      public : false
      topics : ["terraform"]
    }
  }
}