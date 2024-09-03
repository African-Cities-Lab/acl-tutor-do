from tutor import hooks

hooks.Filters.ENV_PATCHES.add_item(
    (
        "openedx-lms-production-settings",
        """
EDX_API_KEY = "{{ 16|random_string }}"
""",
    )
)
