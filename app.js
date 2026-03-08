
function toWa(text){ window.location.href = "https://wa.me/393479191070?text=" + encodeURIComponent(text); }

document.addEventListener("DOMContentLoaded", () => {
  const valuation = document.getElementById("valuationForm");
  if (valuation) {
    valuation.addEventListener("submit", function(e){
      e.preventDefault();
      const f = new FormData(e.target);
      const text = "Buongiorno Guido, vorrei richiedere una valutazione.\n\nNome: " + (f.get('nome')||'') +
      "\nTelefono: " + (f.get('telefono')||'') +
      "\nComune immobile: " + (f.get('comune')||'') +
      "\nMessaggio: " + (f.get('messaggio')||'');
      toWa(text);
    });
  }

  const contact = document.getElementById("contactForm");
  if (contact) {
    contact.addEventListener("submit", function(e){
      e.preventDefault();
      const f = new FormData(e.target);
      const text = "Buongiorno Guido, vorrei essere ricontattato.\n\nNome: " + (f.get('nome')||'') +
      "\nTelefono: " + (f.get('telefono')||'') +
      "\nEmail: " + (f.get('email')||'') +
      "\nComune: " + (f.get('comune')||'') +
      "\nMessaggio: " + (f.get('messaggio')||'');
      toWa(text);
    });
  }
});
