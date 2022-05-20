.class public final Lcom/google/zxing/oned/EAN8Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN8Writer.java"


# static fields
.field public static final CODE_WIDTH:I = 0x43


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Contents do not pass checksum"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Illegal contents"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Requested contents should be 7 or 8 digits long, but got "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/zxing/oned/UPCEANReader;->getStandardUPCEANChecksum(Ljava/lang/CharSequence;)I

    move-result v0
    :try_end_1
    .catch Lcom/google/zxing/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_0
    invoke-static {p1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->checkNumeric(Ljava/lang/String;)V

    const/16 v0, 0x43

    new-array v0, v0, [Z

    .line 9
    sget-object v2, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v3}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v2

    add-int/2addr v2, v4

    move v5, v4

    :goto_1
    const/4 v6, 0x3

    const/16 v7, 0xa

    if-gt v5, v6, :cond_3

    .line 10
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 11
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v6, v7, v6

    invoke-static {v0, v2, v6, v4}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 12
    :cond_3
    sget-object v5, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    invoke-static {v0, v2, v5, v4}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v4

    add-int/2addr v2, v4

    const/4 v4, 0x4

    :goto_2
    if-gt v4, v1, :cond_4

    .line 13
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 14
    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    aget-object v5, v6, v5

    invoke-static {v0, v2, v5, v3}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 15
    :cond_4
    sget-object p1, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v0, v2, p1, v3}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->appendPattern([ZI[IZ)I

    return-object v0

    :catch_1
    move-exception p1

    .line 16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getSupportedWriteFormats()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
