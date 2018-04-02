function fungsi() {
	echo "test"
}

echo "diluar fungsi"

trap fungsi EXIT

echo "setelah trap"
