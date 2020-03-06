#!/bin/zsh
# chmod +x deploy.sh
# Update software version in Setup.py first
rm -rf dist/* && python setup.py sdist && twine upload dist/*    
git add . && git commit -m 'Patch deploy' && git push 3aransia develop && git push 3aransia master
cd ../3aransia.api
source venv/bin/activate   
pip install --upgrade aaransia    
pip freeze > requirements.txt
git add . && git commit -m 'Patch deploy' && git push 3aransia develop && git push 3aransia master
cd ../3aransia