/* N = 3 */
/* T = 2 */
/* F = 2 */
int nsnt = 0;
#define prec_unforg (((Proc0I__pc == 0)))
#define prec_corr (((Proc0I__pc == 1)))
#define prec_init ((Proc0@end))
#define ex_acc (((Proc0I__pc == 3)))
#define all_acc (((Proc0I__pc == 3)))
#define in_transit (((Proc0I__nrcvd < nsnt)))
#define tx_inv (((0 == nsnt)))
/* (N > 3) */
/* (F >= 0) */
/* (T >= 1) */
/* (N > (3 * T)) */
/* (F <= T) */
byte Proc0I__pc = 0;
byte Proc0I__next_pc = 0;
int Proc0I__nrcvd = 0;
int Proc0I__next_nrcvd = 0;
active[1] proctype Proc0() {
  /* globalized pc */
  /* globalized next_pc */
  /* globalized nrcvd */
  /* globalized next_nrcvd */
  if
    ::  Proc0I__pc = 0;
    ::  Proc0I__pc = 1;
  fi;
end:
_lab13:
  if
    ::  atomic {
        if
          ::  Proc0I__next_nrcvd = (Proc0I__nrcvd + 1);
          ::  Proc0I__next_nrcvd = Proc0I__nrcvd;
        fi;
        if
          ::  ( ! (Proc0I__next_nrcvd <= (nsnt + 2)));
              Proc0I__next_nrcvd = Proc0I__nrcvd;
            :: else 
        fi;
        if
          ::  (Proc0I__next_nrcvd >= 1);
              Proc0I__next_pc = 3;
          ::  ((Proc0I__next_nrcvd < 1) && ((Proc0I__pc == 1) ||
                (Proc0I__next_nrcvd >= 3)));
              Proc0I__next_pc = 2;
            :: else ->
Proc0I__next_pc = Proc0I__pc;
        fi;
        if
          ::  (((Proc0I__pc == 0) || (Proc0I__pc == 1)) && ((Proc0I__next_pc
                == 2) || (Proc0I__next_pc == 3)));
              nsnt = (nsnt + 1);
            :: else 
        fi;
        Proc0I__pc = Proc0I__next_pc;
        Proc0I__nrcvd = Proc0I__next_nrcvd;
        printf("STEP: pc=%d; nrcvd=%d; nsnt=%d\n", Proc0I__pc, Proc0I__nrcvd,
          nsnt);
        Proc0I__next_pc = 0;
        Proc0I__next_nrcvd = 0;
      }
  fi;
  goto _lab13;
_lab4:
}
