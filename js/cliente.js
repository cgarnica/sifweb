<script type="text/javascript">
  function validar(text){
           tecla = text.which || text.keyCode;
           patron = /\d/; 
           te = String.fromCharCode(tecla);
           return (patron.test(te) || tecla == 9 || tecla == 8);
    }
 </script> 