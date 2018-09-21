# -*- coding: utf-8 -*-

import argparse
import getpass
import urllib, urllib2

def post(url, usrname, passwd, printResponse=True):
    try:
        params = urllib.urlencode({"name":usrname, "pass":passwd})

        headers ={
            "pragma":"no-cache",
            "User-Agent":"Opera/9.80 (Windows NT 6.1; U; ja) Presto/2.10.229 Version/11.60",
        }
        req = urllib2.Request(url, params ,headers)
        res = urllib2.urlopen(req)
        resBody = str(res.read())

        if "(s)" in resBody:
            print "Authorization: Success!"
        else:
            print "Authorization: Refued, Try again."

        if printResponse:
            print resBody

    except URLError, e:
        print e
        return

def main():
    # aprse debug option
    parser = argparse.ArgumentParser(description='This script is post command to Hosei Network auth page.')
    parser.add_argument('--debug',
                        action='store_true',
                        default=False,
                        help='debug mode(you can see the response) if this flag is set (default: False)')

    args = parser.parse_args()
    # Hosei Auth URL
    url = "https://apresia.hosei.ac.jp:4443/cgi-bin/adeflogin.cgi"
    # get username and password
    usrname = raw_input("User name: ")
    passwd = getpass.getpass()

    # post!
    post(url, usrname, passwd, args.debug)

if __name__ == '__main__':
    main()