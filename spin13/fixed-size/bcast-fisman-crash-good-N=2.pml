/* N = 2 */
int nsnt;
int nsntF;
#define prec_unforg ((((Proc0I__pc == 0) && (Proc1I__pc == 0))))
#define prec_corr ((((Proc0I__pc == 1) && (Proc1I__pc == 1))))
#define prec_init (((Proc0@end && Proc1@end)))
#define ex_acc ((((Proc0I__pc == 2) || (Proc1I__pc == 2))))
#define all_acc (((((Proc0I__pc == 2) || (Proc0I__pc == 3)) && ((Proc1I__pc\
  == 2) || (Proc1I__pc == 3)))))
#define in_transit ((((Proc0I__nrcvd < nsnt) || (Proc1I__nrcvd < nsnt))))
/* (N > 1) */
byte Proc0I__pc = 0;
int Proc0I__nrcvd = 0;
int Proc0I__next_pc = 0;
int Proc0I__next_nrcvd = 0;
active[1] proctype Proc0() {
  /* globalized pc */
  /* globalized nrcvd */
  /* globalized next_pc */
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
          ::  ( ! (Proc0I__next_nrcvd <= (nsnt + nsntF)));
              Proc0I__next_nrcvd = Proc0I__nrcvd;
            :: else 
        fi;
        if
          ::  (Proc0I__pc == 1);
              Proc0I__next_pc = 2;
          ::  (Proc0I__pc == 1);
              Proc0I__next_pc = 3;
          ::  (((Proc0I__pc != 2) && (Proc0I__pc != 3)) &&
                (Proc0I__next_nrcvd >= 1));
              Proc0I__next_pc = 2;
          ::  (((Proc0I__pc != 2) && (Proc0I__pc != 3)) &&
                (Proc0I__next_nrcvd >= 1));
              Proc0I__next_pc = 3;
            :: else ->
Proc0I__next_pc = Proc0I__pc;
        fi;
        if
          ::  (((Proc0I__pc == 0) || (Proc0I__pc == 1)) && (Proc0I__next_pc
                == 2));
              nsnt = (nsnt + 1);
          ::  (((Proc0I__pc == 0) || (Proc0I__pc == 1)) && (Proc0I__next_pc
                == 3));
              nsntF = (nsntF + 1);
            :: else 
        fi;
        Proc0I__pc = Proc0I__next_pc;
        Proc0I__nrcvd = Proc0I__next_nrcvd;
        printf("STEP: pc=%d; nrcvd=%d; nsnt=%d; nsntF=%d\n", Proc0I__pc,
          Proc0I__nrcvd, nsnt, nsntF);
        Proc0I__next_pc = 0;
        Proc0I__next_nrcvd = 0;
      }
  fi;
  goto _lab13;
_lab4:
}
byte Proc1I__pc = 0;
int Proc1I__nrcvd = 0;
int Proc1I__next_pc = 0;
int Proc1I__next_nrcvd = 0;
active[1] proctype Proc1() {
  /* globalized pc */
  /* globalized nrcvd */
  /* globalized next_pc */
  /* globalized next_nrcvd */
  if
    ::  Proc1I__pc = 0;
    ::  Proc1I__pc = 1;
  fi;
end:
_lab13:
  if
    ::  atomic {
        if
          ::  Proc1I__next_nrcvd = (Proc1I__nrcvd + 1);
          ::  Proc1I__next_nrcvd = Proc1I__nrcvd;
        fi;
        if
          ::  ( ! (Proc1I__next_nrcvd <= (nsnt + nsntF)));
              Proc1I__next_nrcvd = Proc1I__nrcvd;
            :: else 
        fi;
        if
          ::  (Proc1I__pc == 1);
              Proc1I__next_pc = 2;
          ::  (Proc1I__pc == 1);
              Proc1I__next_pc = 3;
          ::  (((Proc1I__pc != 2) && (Proc1I__pc != 3)) &&
                (Proc1I__next_nrcvd >= 1));
              Proc1I__next_pc = 2;
          ::  (((Proc1I__pc != 2) && (Proc1I__pc != 3)) &&
                (Proc1I__next_nrcvd >= 1));
              Proc1I__next_pc = 3;
            :: else ->
Proc1I__next_pc = Proc1I__pc;
        fi;
        if
          ::  (((Proc1I__pc == 0) || (Proc1I__pc == 1)) && (Proc1I__next_pc
                == 2));
              nsnt = (nsnt + 1);
          ::  (((Proc1I__pc == 0) || (Proc1I__pc == 1)) && (Proc1I__next_pc
                == 3));
              nsntF = (nsntF + 1);
            :: else 
        fi;
        Proc1I__pc = Proc1I__next_pc;
        Proc1I__nrcvd = Proc1I__next_nrcvd;
        printf("STEP: pc=%d; nrcvd=%d; nsnt=%d; nsntF=%d\n", Proc1I__pc,
          Proc1I__nrcvd, nsnt, nsntF);
        Proc1I__next_pc = 0;
        Proc1I__next_nrcvd = 0;
      }
  fi;
  goto _lab13;
_lab4:
}
