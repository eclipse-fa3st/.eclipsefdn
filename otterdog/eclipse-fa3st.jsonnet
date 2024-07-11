local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-fa3st') {
  settings+: {
    description: "",
    members_can_change_project_visibility: false,
    name: "Fa3st Project",
    packages_containers_internal: false,
    packages_containers_public: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
}
