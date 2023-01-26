from tutor import hooks

hooks.Filters.ENV_PATCHES.add_item(
    (
        "openedx-lms-production-settings",
        'CSRF_TRUSTED_ORIGINS.append("africancitieslab.org")',
    ),
)
