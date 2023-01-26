from tutor import hooks

hooks.Filters.ENV_PATCHES.add_item(
    (
        "mfe-dockerfile-post-npm-install",
        """
RUN npm install '@edx/brand@git+https://github.com/African-Cities-Lab/brand-openedx.git'
""",
    ),
)
