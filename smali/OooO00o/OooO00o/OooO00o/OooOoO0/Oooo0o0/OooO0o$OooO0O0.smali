.class public final LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public OooO0O0:I

.field public OooO0OO:I

.field public OooO0Oo:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO<",
            "TK;TV;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 40
    iget-object v1, v0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    if-nez v1, :cond_0

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public OooO00o(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    .line 2
    iput v0, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0O0:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0Oo:I

    .line 4
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0OO:I

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    return-void
.end method

.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    iput-object v0, p1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    iput-object v0, p1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    iput-object v0, p1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    const/4 v0, 0x1

    .line 7
    iput v0, p1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO:I

    .line 8
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0O0:I

    if-lez v1, :cond_0

    iget v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0Oo:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    add-int/2addr v2, v0

    .line 9
    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0Oo:I

    sub-int/2addr v1, v0

    .line 10
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0O0:I

    .line 11
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0OO:I

    add-int/2addr v1, v0

    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0OO:I

    .line 12
    :cond_0
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    iput-object v1, p1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 13
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 14
    iget p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0Oo:I

    add-int/2addr p1, v0

    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0Oo:I

    .line 15
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0O0:I

    if-lez v1, :cond_1

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1

    add-int/2addr p1, v0

    .line 16
    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0Oo:I

    sub-int/2addr v1, v0

    .line 17
    iput v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0O0:I

    .line 18
    iget p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0OO:I

    add-int/2addr p1, v0

    iput p1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0OO:I

    :cond_1
    const/4 p1, 0x4

    .line 19
    :goto_0
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0Oo:I

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 20
    iget v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0OO:I

    if-nez v1, :cond_2

    .line 21
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 22
    iget-object v2, v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 23
    iget-object v3, v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 24
    iget-object v4, v3, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    iput-object v4, v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 25
    iput-object v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 26
    iput-object v3, v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO0O0:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 27
    iput-object v1, v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 28
    iget v4, v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO:I

    add-int/2addr v4, v0

    iput v4, v2, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO:I

    .line 29
    iput-object v2, v3, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 30
    iput-object v2, v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    .line 31
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 32
    iget-object v3, v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 33
    iput-object v3, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 34
    iput-object v1, v3, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO0OO:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 35
    iget v4, v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO:I

    add-int/2addr v4, v0

    iput v4, v3, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO:I

    .line 36
    iput-object v3, v1, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;->OooO00o:LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0oO;

    .line 37
    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0OO:I

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 38
    iput v2, p0, LOooO00o/OooO00o/OooO00o/OooOoO0/Oooo0o0/OooO0o$OooO0O0;->OooO0OO:I

    :cond_4
    :goto_1
    mul-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_5
    return-void
.end method
