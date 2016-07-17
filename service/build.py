#!/usr/bin/env python
from cgi import escape


def xml_safe(script):
  return escape(script).encode('utf8')

def main():
  out_dir = './FinderService.workflow/Contents/'
  templates = ['document.wflow', 'Info.plist']

  script = open('./service.applescript', 'r').read()
  VARIABLES = {
      'FINDER_SERVICE_APPLESCRIPT': xml_safe(script),
      'FINDER_SERVICE_MENU_NAME': 'Open iTerm',
    }

  for tpl_name in templates:
    in_path = './' + tpl_name
    out_path = out_dir + tpl_name
    with open(in_path, 'r') as fin:
      tpl = fin.read()
    data = tpl.format(**VARIABLES)
    with open(out_path, 'w') as fout:
      fout.write(data)
    print '{0} -> {1}'.format(in_path, out_path)

if __name__ == '__main__':
  main()
