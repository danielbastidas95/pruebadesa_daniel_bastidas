<!-- vista principal
    Autor: Daniel Bastidas - Aspirante desarrollador Backend
-->

<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    </head>
    <body> 

        <div class="container">
        <table class="table">
            <thead class="thead-dark">
                <tr>
                <th scope="col">Departamento</th>
                <th scope="col">Municipio</th>
                <th scope="col">Identificacion</th>
                <th scope="col">nombres</th>
                <th scope="col">tipo tercero</th>

                </tr>
            </thead>
            <tbody>
                <tr>
                <!-- Llamado de registros de tabla thirds del modelo Third -->
                <?php foreach($thirds as $third): ?> 
                <td> <?php echo $third->iddepa ?></td>
                <?php endfor ?>
                
                <?php foreach($thirds as $third): ?>
                <td> <?php echo $third->idmuni ?></td>
                <?php endfor ?>
                <?php foreach($thirds as $third): ?>
                <td> <?php echo $third->nombre1 ?></td>
                <?php endfor ?>
                
                <?php foreach($thirds as $third): ?>
                <td> <?php echo $third->nombre2 ?></td>
                <?php endfor ?>
                
                <?php foreach($thirds as $third): ?>
                <td> <?php echo $third->nombre1 ?></td>
                <?php endfor ?>
                <?php foreach($thirds as $third): ?>
                <td> <?php echo $third->idtipotercero ?></td>
                <?php endfor ?>
                <tr>
            </tbody>
        </table>
    
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>        
    </body>
</html>
