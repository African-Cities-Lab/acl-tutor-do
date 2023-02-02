from tutor import hooks

hooks.Filters.ENV_PATCHES.add_item(
    (
        "common-env-features",
        """
"ENTRANCE_EXAMS": true
""",
    )
)
