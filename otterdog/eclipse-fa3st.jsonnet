local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('dt.fa3st', 'eclipse-fa3st') {
  settings+: {
    description: "",
    name: "Fa3st Project",
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
    },
  },
  _repositories+:: [
    orgs.newRepo('fa3st-parent') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: true,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('fa3st-checkstyle') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: true,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('fa3st-common') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: true,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('fa3st-service') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: true,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('fa3st-registry') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: true,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('fa3st-client') {
      allow_merge_commit: true,
      allow_update_branch: false,
      delete_branch_on_merge: true,
      web_commit_signoff_required: false,
    },
  ],
} + {
  # snippet added due to 'https://github.com/EclipseFdn/otterdog-configs/blob/main/blueprints/add-dot-github-repo.yml'
  _repositories+:: [
    orgs.newRepo('.github')
  ],
}