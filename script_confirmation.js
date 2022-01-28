function ConfimerSupression(id){
    let confirmation = confirm("Voulez vous vraiment supprimer cette classe (Action non réversible)");
    if(confirmation){
        location.replace('index.php?id='+id);
        location.replace('index.php');
    }
    else {
        alert('Action annulée');
    }
}