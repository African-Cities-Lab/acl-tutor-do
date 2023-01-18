from tutor import hooks

hooks.Filters.ENV_PATCHES.add_item(
    (
        "openedx-lms-common-settings",
        """
FEATURES["ENABLE_COURSE_DISCOVERY"] = False
FEATURES["ENABLE_COURSEWARE_SEARCH"] = False
FEATURES["ENABLE_DASHBOARD_SEARCH"] = False
"""
    )
)
