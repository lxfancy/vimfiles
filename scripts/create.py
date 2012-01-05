#!/usr/bin/python
# -*- coding: utf-8 -*-

import os
import yaml

header = '''#!/bin/bash

function color_echo() {
    echo -e "\e[1;33m$@\e[0m"
}

bundle_path=~/.vim/bundle
mkdir -p $bundle_path
cd $bundle_path
'''

template = '''
if [ ! -d "%s" ]; then
    color_echo "Downloading %s"
    %s
fi
'''

bundle_filename = 'bundle.yaml'
download_filename = 'download.sh'

def main():
    bundle_file = open(bundle_filename);
    bundle_dict = yaml.load(bundle_file);

    commands = []
    for name, info in bundle_dict.iteritems():
        if 'type' not in info:
            repo_type = 'git'
        else:
            repo_type = info['type']

        repo_url = info['repo']
        repo_name = "%s.%s" % (name, repo_type)
        if repo_type == 'git':
            repo_command = 'git clone --depth 1 %s %s' % (repo_url, repo_name)
        elif repo_type == 'hg':
            repo_command = 'hg clone -r -1 %s %s' % (repo_url, repo_name)
        elif repo_type == 'svn':
            repo_command = 'svn checkout %s %s' % (repo_url, repo_name)
        else:
            continue
        command = template % (repo_name, name, repo_command)
        commands.append(command)

    download_file = open(download_filename, 'w')
    download_file.write(header)
    download_file.write(''.join(commands))
    download_file.flush
    download_file.close()

    os.chmod(download_filename, 33261) # rwxr-xr-x
    print './%s created, double check then run it.' % download_filename

if __name__ == '__main__':
    main()
