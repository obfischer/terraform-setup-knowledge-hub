variable "var_knowledge_repositories" {
  type = map(object({
    description : string
    topics : list(string)
    public : bool
    has_pages : bool
  }))
  default = {
    "knowledge-hub" = {
      description : "Antora-Hauptprojekt für den Wissenshub"
      public : true
      has_pages : true
      topics : ["antora", "asciidoctor"]
    },
    "api-best-practices" = {
      description : "Antora-Modul für Best Practices für REST-API"
      public : true
      has_pages : false
      topics : ["antora", "asciidoctor", "api", "http", "rest", "best-practices"]
    },
    "maven-best-practices" = {
      description : "Antora-Modul für Best Practices für Apache Maven"
      public : true
      has_pages : false
      topics : ["antora", "asciidoctor", "maven", "apache-maven", "best-practices"]
    },
    "terraform-setup-knowledge-hub" = {
      description : "Terraform-Projekt für die Knowledgebase-Hub Repositorys"
      public : false
      has_pages : false
      topics : ["terraform"]
    }
  }
}
