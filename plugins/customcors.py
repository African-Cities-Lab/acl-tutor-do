from tutor import hooks

hooks.Filters.ENV_PATCHES.add_item(
    (
        "openedx-lms-production-settings",
        'CORS_ORIGIN_WHITELIST.append("https://africancitieslab.org")',
    ),
)
