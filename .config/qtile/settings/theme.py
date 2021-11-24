# Gabriel Guerra (Thank you Antonio Sarosi)
# -- Gabriel Guerra links --
# http://github.com/AlphaTechnolog/
# http://github.com/AlphaTechnolog/dotfiles
# -- Antonio Sarosi links --
# https://youtube.com/c/antoniosarosi
# https://github.com/antoniosarosi/dotfiles

# Theming for Qtile

from os import path
import subprocess
import json

from .path import qtile_path


def get_theme():
    theme = 'dark-grey'

    config = path.join(qtile_path, 'config.json')
    if path.isfile(config):
        with open(config) as f:
            theme = json.load(f)['theme']
    else:
        with open(config) as f:
            f.write(f'{{"theme": "{theme}"}}\n')

    return theme


def load_theme():
    theme = get_theme()

    theme_file = path.join(qtile_path, "themes", f'{theme}.json')
    if not path.isfile(theme_file):
        raise Exception(f'"{theme_file}" does not exist')

    with open(path.join(theme_file)) as f:
        return json.load(f)


if __name__ == "settings.theme":
    theme = get_theme()
    colors = load_theme()
