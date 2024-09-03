from tutor import hooks

hooks.Filters.ENV_PATCHES.add_item(
    (
        "openedx-lms-common-settings",
        """
FEATURES["ENABLE_COURSE_SORTING_BY_START_DATE"] = True
""",
    )
)
