void set_GB_operator_colMajor_poisson1D(double *AB, int *lab, int *la, int *kv)
{
    int ii, jj, kk;
    for(ii = 0; ii < (*lab); ii++)
    {
        kk = ii * (*la);
        if(*kv >= 0)
        {
            for(jj = 0; jj < *kv ; jj++)
            {
                AB[kk + jj] = 0.0;
            }
        }
        for(int p = 0; p < la ; p++)
        {
            if(ii % 2 == 0)
                AB[kk + *kv + p] = -1.0;
            else
                AB[kk + *kv + p] = 2.0;
        }
        AB[0] = 0.0;
        if(*kv == 1)
        {
            AB[1] = 0;
        }
        AB[(*lab) * (*la) - 1] = 0.0;
    }
}

void write_GB_operator_colMajor_poisson1D(double* AB, int *la, char* filename)
{
    FILE * file;
    int ii,jj;
    file = fopen(filename,"w");
    //Numbering from 1 to la
    if(file != NULL){
        for(jj = 0; jj < (*la); j++){
            for(ii = 0; ii <(*lab); ii++)
            {
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