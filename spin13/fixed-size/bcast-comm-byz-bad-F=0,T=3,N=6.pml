/* N = 6 */
/* T = 3 */
/* F = 0 */
int nsnt;
#define prec_unforg ((((((((Proc0I__pc == 0) && (Proc1I__pc == 0)) &&\
  (Proc2I__pc == 0)) && (Proc3I__pc == 0)) && (Proc4I__pc == 0)) &&\
  (Proc5I__pc == 0))))
#define prec_corr ((((((((Proc0I__pc == 1) && (Proc1I__pc == 1)) &&\
  (Proc2I__pc == 1)) && (Proc3I__pc == 1)) && (Proc4I__pc == 1)) &&\
  (Proc5I__pc == 1))))
#define prec_init (((((((Proc0@end && Proc1@end) && Proc2@end) && Proc3@end)\
  && Proc4@end) && Proc5@end)))
#define ex_acc ((((((((Proc0I__pc == 3) || (Proc1I__pc == 3)) || (Proc2I__pc\
  == 3)) || (Proc3I__pc == 3)) || (Proc4I__pc == 3)) || (Proc5I__pc == 3))))
#define all_acc ((((((((Proc0I__pc == 3) && (Proc1I__pc == 3)) && (Proc2I__pc\
  == 3)) && (Proc3I__pc == 3)) && (Proc4I__pc == 3)) && (Proc5I__pc == 3))))
#define in_transit ((((((((Proc0I__nrcvd < (nsnt - 0)) || (Proc1I__nrcvd <\
  (nsnt - 0))) || (Proc2I__nrcvd < (nsnt - 0))) || (Proc3I__nrcvd < (nsnt -\
  0))) || (Proc4I__nrcvd < (nsnt - 0))) || (Proc5I__nrcvd < (nsnt - 0)))))
#define tx_inv (((0 == nsnt)))
/* (N > 1) */
/* (T > 0) */
/* (N > (4 * T)) */
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
_lab11:
  if
    ::  atomic {
        Proc0I__next_nrcvd = (Proc0I__nrcvd + 1);
        if
          ::  ( ! (Proc0I__next_nrcvd <= (nsnt + 0)));
              Proc0I__next_nrcvd = 0;
              goto end;
            :: else 
        fi;
        if
          ::  ((Proc0I__next_nrcvd >= 3) || ((Proc0I__next_nrcvd >= 6) &&
                (Proc0I__next_nrcvd <= 0)));
              Proc0I__next_pc = 3;
          ::  ((Proc0I__next_nrcvd < 3) && ((Proc0I__pc == 1) ||
                (Proc0I__next_nrcvd >= 4)));
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
  goto _lab11;
_lab4:
}
byte Proc1I__pc = 0;
byte Proc1I__next_pc = 0;
int Proc1I__nrcvd = 0;
int Proc1I__next_nrcvd = 0;
active[1] proctype Proc1() {
  /* globalized pc */
  /* globalized next_pc */
  /* globalized nrcvd */
  /* globalized next_nrcvd */
  if
    ::  Proc1I__pc = 0;
    ::  Proc1I__pc = 1;
  fi;
end:
_lab11:
  if
    ::  atomic {
        Proc1I__next_nrcvd = (Proc1I__nrcvd + 1);
        if
          ::  ( ! (Proc1I__next_nrcvd <= (nsnt + 0)));
              Proc1I__next_nrcvd = 0;
              goto end;
            :: else 
        fi;
        if
          ::  ((Proc1I__next_nrcvd >= 3) || ((Proc1I__next_nrcvd >= 6) &&
                (Proc1I__next_nrcvd <= 0)));
              Proc1I__next_pc = 3;
          ::  ((Proc1I__next_nrcvd < 3) && ((Proc1I__pc == 1) ||
                (Proc1I__next_nrcvd >= 4)));
              Proc1I__next_pc = 2;
            :: else ->
Proc1I__next_pc = Proc1I__pc;
        fi;
        if
          ::  (((Proc1I__pc == 0) || (Proc1I__pc == 1)) && ((Proc1I__next_pc
                == 2) || (Proc1I__next_pc == 3)));
              nsnt = (nsnt + 1);
            :: else 
        fi;
        Proc1I__pc = Proc1I__next_pc;
        Proc1I__nrcvd = Proc1I__next_nrcvd;
        printf("STEP: pc=%d; nrcvd=%d; nsnt=%d\n", Proc1I__pc, Proc1I__nrcvd,
          nsnt);
        Proc1I__next_pc = 0;
        Proc1I__next_nrcvd = 0;
      }
  fi;
  goto _lab11;
_lab4:
}
byte Proc2I__pc = 0;
byte Proc2I__next_pc = 0;
int Proc2I__nrcvd = 0;
int Proc2I__next_nrcvd = 0;
active[1] proctype Proc2() {
  /* globalized pc */
  /* globalized next_pc */
  /* globalized nrcvd */
  /* globalized next_nrcvd */
  if
    ::  Proc2I__pc = 0;
    ::  Proc2I__pc = 1;
  fi;
end:
_lab11:
  if
    ::  atomic {
        Proc2I__next_nrcvd = (Proc2I__nrcvd + 1);
        if
          ::  ( ! (Proc2I__next_nrcvd <= (nsnt + 0)));
              Proc2I__next_nrcvd = 0;
              goto end;
            :: else 
        fi;
        if
          ::  ((Proc2I__next_nrcvd >= 3) || ((Proc2I__next_nrcvd >= 6) &&
                (Proc2I__next_nrcvd <= 0)));
              Proc2I__next_pc = 3;
          ::  ((Proc2I__next_nrcvd < 3) && ((Proc2I__pc == 1) ||
                (Proc2I__next_nrcvd >= 4)));
              Proc2I__next_pc = 2;
            :: else ->
Proc2I__next_pc = Proc2I__pc;
        fi;
        if
          ::  (((Proc2I__pc == 0) || (Proc2I__pc == 1)) && ((Proc2I__next_pc
                == 2) || (Proc2I__next_pc == 3)));
              nsnt = (nsnt + 1);
            :: else 
        fi;
        Proc2I__pc = Proc2I__next_pc;
        Proc2I__nrcvd = Proc2I__next_nrcvd;
        printf("STEP: pc=%d; nrcvd=%d; nsnt=%d\n", Proc2I__pc, Proc2I__nrcvd,
          nsnt);
        Proc2I__next_pc = 0;
        Proc2I__next_nrcvd = 0;
      }
  fi;
  goto _lab11;
_lab4:
}
byte Proc3I__pc = 0;
byte Proc3I__next_pc = 0;
int Proc3I__nrcvd = 0;
int Proc3I__next_nrcvd = 0;
active[1] proctype Proc3() {
  /* globalized pc */
  /* globalized next_pc */
  /* globalized nrcvd */
  /* globalized next_nrcvd */
  if
    ::  Proc3I__pc = 0;
    ::  Proc3I__pc = 1;
  fi;
end:
_lab11:
  if
    ::  atomic {
        Proc3I__next_nrcvd = (Proc3I__nrcvd + 1);
        if
          ::  ( ! (Proc3I__next_nrcvd <= (nsnt + 0)));
              Proc3I__next_nrcvd = 0;
              goto end;
            :: else 
        fi;
        if
          ::  ((Proc3I__next_nrcvd >= 3) || ((Proc3I__next_nrcvd >= 6) &&
                (Proc3I__next_nrcvd <= 0)));
              Proc3I__next_pc = 3;
          ::  ((Proc3I__next_nrcvd < 3) && ((Proc3I__pc == 1) ||
                (Proc3I__next_nrcvd >= 4)));
              Proc3I__next_pc = 2;
            :: else ->
Proc3I__next_pc = Proc3I__pc;
        fi;
        if
          ::  (((Proc3I__pc == 0) || (Proc3I__pc == 1)) && ((Proc3I__next_pc
                == 2) || (Proc3I__next_pc == 3)));
              nsnt = (nsnt + 1);
            :: else 
        fi;
        Proc3I__pc = Proc3I__next_pc;
        Proc3I__nrcvd = Proc3I__next_nrcvd;
        printf("STEP: pc=%d; nrcvd=%d; nsnt=%d\n", Proc3I__pc, Proc3I__nrcvd,
          nsnt);
        Proc3I__next_pc = 0;
        Proc3I__next_nrcvd = 0;
      }
  fi;
  goto _lab11;
_lab4:
}
byte Proc4I__pc = 0;
byte Proc4I__next_pc = 0;
int Proc4I__nrcvd = 0;
int Proc4I__next_nrcvd = 0;
active[1] proctype Proc4() {
  /* globalized pc */
  /* globalized next_pc */
  /* globalized nrcvd */
  /* globalized next_nrcvd */
  if
    ::  Proc4I__pc = 0;
    ::  Proc4I__pc = 1;
  fi;
end:
_lab11:
  if
    ::  atomic {
        Proc4I__next_nrcvd = (Proc4I__nrcvd + 1);
        if
          ::  ( ! (Proc4I__next_nrcvd <= (nsnt + 0)));
              Proc4I__next_nrcvd = 0;
              goto end;
            :: else 
        fi;
        if
          ::  ((Proc4I__next_nrcvd >= 3) || ((Proc4I__next_nrcvd >= 6) &&
                (Proc4I__next_nrcvd <= 0)));
              Proc4I__next_pc = 3;
          ::  ((Proc4I__next_nrcvd < 3) && ((Proc4I__pc == 1) ||
                (Proc4I__next_nrcvd >= 4)));
              Proc4I__next_pc = 2;
            :: else ->
Proc4I__next_pc = Proc4I__pc;
        fi;
        if
          ::  (((Proc4I__pc == 0) || (Proc4I__pc == 1)) && ((Proc4I__next_pc
                == 2) || (Proc4I__next_pc == 3)));
              nsnt = (nsnt + 1);
            :: else 
        fi;
        Proc4I__pc = Proc4I__next_pc;
        Proc4I__nrcvd = Proc4I__next_nrcvd;
        printf("STEP: pc=%d; nrcvd=%d; nsnt=%d\n", Proc4I__pc, Proc4I__nrcvd,
          nsnt);
        Proc4I__next_pc = 0;
        Proc4I__next_nrcvd = 0;
      }
  fi;
  goto _lab11;
_lab4:
}
byte Proc5I__pc = 0;
byte Proc5I__next_pc = 0;
int Proc5I__nrcvd = 0;
int Proc5I__next_nrcvd = 0;
active[1] proctype Proc5() {
  /* globalized pc */
  /* globalized next_pc */
  /* globalized nrcvd */
  /* globalized next_nrcvd */
  if
    ::  Proc5I__pc = 0;
    ::  Proc5I__pc = 1;
  fi;
end:
_lab11:
  if
    ::  atomic {
        Proc5I__next_nrcvd = (Proc5I__nrcvd + 1);
        if
          ::  ( ! (Proc5I__next_nrcvd <= (nsnt + 0)));
              Proc5I__next_nrcvd = 0;
              goto end;
            :: else 
        fi;
        if
          ::  ((Proc5I__next_nrcvd >= 3) || ((Proc5I__next_nrcvd >= 6) &&
                (Proc5I__next_nrcvd <= 0)));
              Proc5I__next_pc = 3;
          ::  ((Proc5I__next_nrcvd < 3) && ((Proc5I__pc == 1) ||
                (Proc5I__next_nrcvd >= 4)));
              Proc5I__next_pc = 2;
            :: else ->
Proc5I__next_pc = Proc5I__pc;
        fi;
        if
          ::  (((Proc5I__pc == 0) || (Proc5I__pc == 1)) && ((Proc5I__next_pc
                == 2) || (Proc5I__next_pc == 3)));
              nsnt = (nsnt + 1);
            :: else 
        fi;
        Proc5I__pc = Proc5I__next_pc;
        Proc5I__nrcvd = Proc5I__next_nrcvd;
        printf("STEP: pc=%d; nrcvd=%d; nsnt=%d\n", Proc5I__pc, Proc5I__nrcvd,
          nsnt);
        Proc5I__next_pc = 0;
        Proc5I__next_nrcvd = 0;
      }
  fi;
  goto _lab11;
_lab4:
}
