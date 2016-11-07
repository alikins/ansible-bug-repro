from ansible.plugins.callback import CallbackBase
import pprint


class CallbackModule(CallbackBase):

    def v2_runner_on_ok(self, result):
        try:
            pprint.pprint(result.__dict__)
            pprint.pprint(result._task.__dict__)
            print 'result=%s' % result
            print 'result._result[invocation]=%s' % result._result['invocation']
            print 'module name is %s' % str(result._result['invocation']['module_name'])
        except Exception as e:
            print e
            print 'Unable to print: %s' % str(e)
            raise
