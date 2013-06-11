(*
 *  A contribution from Anne Sheets (sheets@cory)
 *
 *  Tests the arithmetic operations and various other things
 *)

class A {

   var : Int <- 0;

   value() : Int { var };

   method5(num : Int) : E {  -- factorial
      (let x : Int <- 1 in
	 {
	    (let y : Int <- 1 in
	       while y <= num loop
	          {
                     x <- x * y;
	             y <- y + 1;
	          }
	       pool
	    );
	    (new E).set_var(x);
	 }
      )
   };

};
