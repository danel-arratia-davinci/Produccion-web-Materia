<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link rel="stylesheet" href="/public/css/estilos.css">

<main id="producto">
    <div class="producto">
    <h2 class=" text-center "> 
        <a class="btn btn-danger" href="usuario/logout">Salir</a>

        <h1>Productos</h1>
        <div class="container">
            <div class="row d-flex justify-content-center">
            <?php      
            foreach ($listaProductos as $prod){
                    $idProducto = $prod['idProducto'];
                    $nombreProducto = $prod['nombreProducto'];
                    $categoriaProducto = $prod['categoriaProducto'];
                    $fotoProducto = $prod['fotoProducto'];
                    $descripcionProducto = $prod['descripcionProducto'];
                    $precioProducto = $prod['precioProducto'];
                    $puntacion = $prod['puntacion'];


                    echo"<div class='card border-secondary mb-4 col-6' style='max-width: 18rem'>
                      <div class='card-body text-secondary'>
                        <h5 class='card-title'>  $nombreProducto  </h5>
                        <img src=$fotoProducto alt=  $nombreProducto  height='200px'>
                        <p class='card-text'> $descripcionProducto </p>
                        <p class='card-text'> precio: $precioProducto </p>
                        <p class='card-text'>puntuacion: $puntacion </p>
                     
                        </div>
                    </div>";

                  }    
                 ?>     
            </div>
        </div> 
    </div>
</main>