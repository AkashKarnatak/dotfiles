from kitty.boss import Boss
from kittens.tui.handler import result_handler


def main(args: list[str]) -> str:
    pass


@result_handler(no_ui=True)
def handle_result(
    args: list[str], answer: str, target_window_id: int, boss: Boss
) -> None:
    tab = boss.active_tab
    if len(tab.windows) == 1:
        tab.new_window(cwd=tab.get_cwd_of_active_window(), location="vsplit", bias=40)
    else:
        if tab.current_layout.name == "stack":
            tab.last_used_layout()
            tab.nth_window(-1)
        else:
            tab.first_window()
            tab.goto_layout("stack")
