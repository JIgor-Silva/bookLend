
document.addEventListener('DOMContentLoaded', function() {
    const closeAlertButton = document.getElementById('close-alert');
    const alertMessage = document.getElementById('alert-message');
    
    if (closeAlertButton && alertMessage) {
      closeAlertButton.addEventListener('click', function() {
        alertMessage.style.display = 'none'; // Ou você pode usar 'remove()' para remover o elemento completamente
      });
    }
  });
