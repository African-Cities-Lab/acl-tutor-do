from tutor import hooks

hooks.Filters.ENV_PATCHES.add_item(
    (
        "openedx-lms-production-settings",
        """
AUTHN_MICROFRONTEND_DOMAIN = "apps.courses.africancitieslab.org/authn"
""",
    )
)
