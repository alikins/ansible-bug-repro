from ansible.plugins.callback import CallbackBase
# from ansible import constants as C
from memory_profiler import profile


class CallbackModule(CallbackBase):
    """
    This callback module tells you how much memory a task takes
    """
    CALLBACK_VERSION = 2.0
    CALLBACK_TYPE = 'aggregate'
    CALLBACK_NAME = 'profile_memory'
    CALLBACK_NEEDS_WHITELIST = True

    def __init__(self):
        super(CallbackModule, self).__init__()

    @profile(precision=3)
    def v2_playbook_on_task_start(self, task, is_conditional):
        self.playbook_on_task_start(task.name, is_conditional)
