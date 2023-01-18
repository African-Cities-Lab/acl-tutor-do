from tutor import hooks

hooks.Filters.ENV_PATCHES.add_item(
    (
        "openedx-lms-common-settings",
        "FEATURES['CUSTOM_CERTIFICATE_TEMPLATES_ENABLED'] = True",
    )
)
