saludo()
{
    NOMBRE=$1;
    echo "Hola Docker, tu nombre es $NOMBRE";
}

echo "docker run ...";

"$@"
