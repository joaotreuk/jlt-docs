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
      elif item == "JavaScript":
        objeto["fileExtension"] = "js"
      elif item == "Markdown":
        objeto["fileExtension"] = "md"
      elif item == "Pascal":
        objeto["fileExtension"] = "pas"
      elif item == "PowerShell":
        objeto["fileExtension"] = "ps1"
      elif item == "Python":
        objeto["fileExtension"] = "py"
      elif item == "Razor":
        objeto["fileExtension"] = "cshtml"
      elif item == "SQL Server":
        objeto["fileExtension"] = "sql"
      elif item == "TypeScript":
        objeto["fileExtension"] = "ts"
      else:
        objeto["fileExtension"] = item.lower()

      estrutura.append(objeto)
    elif os.path.isfile(caminho):
      # Salva arquivos que não são de texto com propridade p/ serem baixados
      partesNome = os.path.splitext(item)
      if partesNome[1] == ".xlsx" or partesNome[1] == ".docx":
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
