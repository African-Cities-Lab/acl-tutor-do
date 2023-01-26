from tutor import hooks

hooks.Filters.ENV_PATCHES.add_item(
    (
        "openedx-lms-production-settings",
        """
MFE_CONFIG["LOGO_WHITE_URL"] = "https://courses-staging.africancitieslab.org/theming/asset/images/logo-white.png"
""",
    ),
)
