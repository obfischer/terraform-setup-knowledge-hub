resource "github_repository" "repositories" {
  for_each = var.var_knowledge_repositories

  name        = each.key
  description = each.value.description

  visibility = each.value.public ? "public" : "private"
  auto_init  = true

  has_discussions = false
  has_downloads   = false
  has_issues      = false
  has_projects    = false

  delete_branch_on_merge = true
  allow_auto_merge       = false
  allow_merge_commit     = false
  allow_rebase_merge     = true
  allow_squash_merge     = false

  // Enables Dependabot alerts for the repository for vulnerable dependencies
  vulnerability_alerts   = true
}

resource "github_branch" "branch_future" {
  for_each = var.var_knowledge_repositories

  repository = each.key
  branch     = "future"
}

resource "github_branch_default" "default_branch_future" {
  for_each = var.var_knowledge_repositories

  repository = each.key
  branch     = github_branch.branch_future[each.key].branch
}

resource "github_repository_topics" "topics" {
  for_each = var.var_knowledge_repositories

  repository = each.key
  topics     = each.value.topics
}