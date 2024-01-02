import requests
import os
import argparse

def doi2bib(doi):
  """
  Return a bibTeX string of metadata for a given DOI.
  """

  url = "http://dx.doi.org/" + doi

  headers = {"accept": "application/x-bibtex"}
  r = requests.get(url, headers = headers)

  return r.text

# %%
parser = argparse.ArgumentParser()
parser.add_argument('--doi', required=True, type=str, help='DOI')
args = parser.parse_args()
doi_input = args.doi

pairs = doi2bib(doi_input).split(',')

# Create a dictionary to store the key-value pairs
data_dict = {}

# Iterate through each pair and extract key-value information
for pair in pairs:
    try:
        key, value = pair.split("=")
        key = key[1:]
        # Extract contents within curly braces and split them
        contents = [content.strip() for content in value.strip("{}").split(',')]
        data_dict[key] = contents
    except:
        pass

title = data_dict['title'][0]
dir_name = data_dict['author'][0] + data_dict['year'][0]
doi_url = f'https://doi.org/{doi_input}'
journal = data_dict['journal'][0]
volume = data_dict['volume'][0]
try: 
    number = data_dict['number'][0]
except ValueError:
    number = None


os.makedirs(f'{dir_name}')

f = open(f'{dir_name}/index.md', 'w')
f.write('---\n')
f.write(f"title: '{title}'\n")
f.write('\n')
f.write('authors:\n')
f.write('  - \n')
f.write('\n')
f.write(f"date: '{int(dir_name[-4:])}-01-01T00:00:00Z'\n")
f.write(f"publishDate: '{int(dir_name[-4:])}-01-01T00:00:00Z'\n")
f.write("publication_types: ['2']\n")
f.write('\n')
if number is None:
    f.write(f"publication: '*{journal}, {volume}*'\n")
else:
    f.write(f"publication: '*{journal}, {volume}({number})*'\n")
f.write("publication_short: \n")
f.write('\n')
f.write("abstract: ''\n")
f.write('\n')
f.write('tags:\n')
f.write('  - \n')
f.write('\n')
f.write('featured: false\n')
f.write('\n')
f.write('links:\n')
f.write('  - name: Paper\n')
f.write(f'    url: {doi_url}\n')
f.write('---')

f.close()
