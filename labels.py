#!/usr/bin/env python3

from xml.dom import minidom


def main():
    dom = minidom.parse('mail-filters.xml')
    elements = dom.getElementsByTagName('apps:property')
    labels = set()
    for element in elements:
        if element.attributes['name'].value == 'label':
            labels.add(element.attributes['value'].value)
    labels = list(labels)
    labels.sort()
    print("\n".join(labels))

if __name__=="__main__":
    main()
