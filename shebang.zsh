

echo "\n<<< Running $0 >>>\n"
echo "ZSH_VERION=$ZSH_VERSION"
echo "The current shell is: $(ps $$ -ocomm=)"

exists brew && echo "exellent!!!" || echo "bogus"
exists nonexistent && echo "exelllent" || echo "bogus"

which exists
