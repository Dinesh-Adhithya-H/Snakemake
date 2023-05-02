rule cram_to_bam:
    input:
        "GRCh38_full_analysis_set_plus_decoy_hla.fa",
        "1000genomes/data/NA21144/alignment/NA21144.alt_bwamem_GRCh38DH.20150718.GIH.low_coverage.cram"
    output:
        "output.bam"
    shell:
        "./samtools-1.9/samtools view -h -T {input} > {output}"