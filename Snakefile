rule cram_to_bam:
    input:
        fa="/home/ubuntu/GRCh38_full_analysis_set_plus_decoy_hla.fa",
        cram="/home/ubuntu/1000genomes/data/NA21144/alignment/NA21144.alt_bwamem_GRCh38DH.20150718.GIH.low_coverage.cram"
    output:
        bam="/home/ubuntu/datasets/output.bam"
    shell:
        "/home/ubuntu/samtools-1.9/samtools view -b -T {input.fa} -o {output.bam} {input.cram}"
