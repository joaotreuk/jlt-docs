import locale
import json
import os

# Define a localização para pt-br
locale.setlocale(locale.LC_ALL, 'pt_BR.UTF-8')

# Obter objeto de estrutura da pasta
def get_directory_structure(pasta):
  estrutura = []
  for item in sorted(os.listdir(pasta), key = locale.strxfrm):
    caminho = os.path.join(pasta, item)
    
    if os.path.isdir(caminho):
      objeto = {
        "name": item,
        "children": get_directory_structure(caminho)
      }

      # Definições de cada linguagem
      if item == "cSharp":
        objeto["id"] = item
        objeto["fileExtension"] = "cs"
        objeto["name"] = "c#"
      elif item == "Dart":
        objeto["fileExtension"] = "dart"
      elif item == "HTML":
        objeto["fileExtension"] = "html"
      elif item == "JavaScript":
        objeto["fileExtension"] = "js"
      elif item == "PowerShell":
        objeto["fileExtension"] = "ps1"
      elif item == "Razor":
        objeto["fileExtension"] = "cshtml"

      estrutura.append(objeto)
    elif os.path.isfile(caminho):
      # Salva diferente os arquivos xlsx
      partesNome = os.path.splitext(item)
      if partesNome[1] == ".xlsx":
        estrutura.append({
          "name": partesNome[0],
          "file": item
        })
      else:
        estrutura.append(partesNome[0])
  return estrutura

# Criar o arquivo JSON de documentos
with open("public\\docs.json", "w") as arquivo:
  arquivo.write(json.dumps(get_directory_structure("public\\docs")))
