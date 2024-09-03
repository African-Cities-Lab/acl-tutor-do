from tutor import hooks

hooks.Filters.ENV_PATCHES.add_item(
    (
        "openedx-lms-common-settings",
        """
FEATURES["ALLOW_COURSE_STAFF_GRADE_DOWNLOADS"] = True
""",
    )
)
