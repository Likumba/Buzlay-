<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buzlay-Agence</title>

    <style>
      body {
        background-color: #f4f4f4;
        font-family: Arial, sans-serif;
        padding: 15px;
      }

      h1 {
        color: blue;
        text-align: center;
      }

      /* Style des éléments de liste pour qu'ils ressemblent à des boutons cliquables */
      li {
        background-color: #ffffff;
        margin: 8px 0;
        padding: 10px;
        border-radius: 5px;
        list-style-type: none;
        cursor: pointer;
        border: 1px solid #ddd;
      }

      li:hover {
        background-color: #e0e0e0;
      }

      a {
        background-color: green;
        color: white;
        text-decoration: none;
        padding: 10px 20px;
        border-radius: 5px;
        display: inline-block;
        margin-top: 15px;
      }
    </style>
  </head>
  <body>

    <h1>Buzlay</h1>
    <img src="https://via.placeholder.com/150" alt="Logo de Buzlay">
    
    <h2>agence</h2>
    <p>vente et achat</p>
    <p>République démocratique du Congo</p>

    <!-- Chaque élément <li> appelle la fonction JavaScript avec un message spécifique -->
    <ul>
      <li onclick="informer('Achat')">Achat de biens (Cliquez pour plus d'infos)</li>
      <li onclick="informer('Vente')">Vente de biens (Cliquez pour plus d'infos)</li>
      <li onclick="informer('Conseil')">Conseil et accompagnement (Cliquez pour plus d'infos)</li>
    </ul>

    <a href="https://wa.me/243981312139">Contactez-nous sur WhatsApp</a>

    <!-- Début du code JavaScript -->
    <script>
      function informer(typeService) {
        if (typeService === 'Achat') {
          alert("Buzlay vous aide à trouver et acheter les meilleurs biens immobiliers et matériels en RDC.");
        } else if (typeService === 'Vente') {
          alert("Confiez-nous vos articles ou propriétés pour une vente rapide et sécurisée.");
        } else if (typeService === 'Conseil') {
          alert("Nos experts vous accompagnent dans l'évaluation et les démarches juridiques.");
        }
      }
    </script>

  </body>
</html>
