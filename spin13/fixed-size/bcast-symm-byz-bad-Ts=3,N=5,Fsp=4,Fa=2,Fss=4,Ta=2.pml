/* N = 5 */
/* Ta = 2 */
/* Fa = 2 */
/* Ts = 3 */
/* Fsp = 4 */
/* Fss = 4 */
int nsnt;
#define prec_unforg ((skip /*  */))
#define prec_corr ((skip /*  */))
#define prec_init ((skip /*  */))
#define ex_acc ((skip /*  */))
#define all_acc ((skip /*  */))
#define in_transit ((skip /*  */))
#define tx_inv (((0 == nsnt)))
#define symm_inv (((((0 == 0) && (nsnt >= 0)) || ( ! ((nsnt + 4) < 6)))))
/* (N > 3) */
/* (Fss >= 0) */
/* (Fsp >= 0) */
/* (Fa >= 0) */
/* (Ts >= 1) */
/* (Ta >= 1) */
/* (N > ((3 * Ta) + (2 * Ts))) */
/* (Fss <= Fsp) */
/* (Fsp <= Ts) */
/* (Fa <= Ta) */
