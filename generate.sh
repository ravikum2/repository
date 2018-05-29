echo "Enter company name"
read comp
echo "Enter project name"
read proj

mvn archetype:generate -DgroupId="$comp" -DartifactId "$proj" -DarchetypeArtifactId=maven-archetype-webapp -Dinteractivemode=false

cd "$proj"
git init
