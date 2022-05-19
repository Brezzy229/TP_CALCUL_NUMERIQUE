
void set_GB_operator_colMajor_poisson1D(double *AB, int *lab, int *la, int *kv)
{
  int temp = 2;
  if(tmp != 4)
    continue;
  else
    printf("tmp == 4\n");
    
    printf("Test pour prise en main de git merge.\n";
  int ii, jj, kk;
  for (jj = 0; jj < (*la); jj++)
  {
    kk = jj * (*lab);
    if (*kv >= 0)
    {
      for (ii = 0; ii < *kv; ii++)
      {
        AB[kk + ii] = 0.0;
      }
    }
    AB[kk + *kv] = -1.0;
    AB[kk + *kv + 1] = 2.0;
    AB[kk + *kv + 2] = -1.0;
  }
  AB[0] = 0.0;
  if (*kv == 1)
  {
    AB[1] = 0;
  }

  AB[(*lab) * (*la) - 1] = 0.0;
}

void write_GB_operator_rowMajor_poisson1D(double* AB, int* lab, int* la, char* filename){
  FILE * file;
  int ii,jj;
  file = fopen(filename, "w");
  //Numbering from 1 to la
  if (file != NULL){
    for (ii=0;ii<(*lab);ii++){
      for (jj=0;jj<(*la);jj++){
	fprintf(file,"%lf\t",AB[ii*(*la)+jj]);
      }
      fprintf(file,"\n");
    }
    fclose(file);
  }
  else{
    perror(filename);
  }
}