.class public LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;
.super Ljava/lang/Object;
.source "GradientColor.java"


# instance fields
.field public final OooO00o:[F

.field public final OooO0O0:[I


# direct methods
.method public constructor <init>([F[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO00o:[F

    .line 3
    iput-object p2, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO0O0:[I

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;F)V
    .locals 4

    .line 2
    iget-object v0, p1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO0O0:[I

    array-length v0, v0

    iget-object v1, p2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO0O0:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO0O0:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO00o:[F

    iget-object v2, p1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO00o:[F

    aget v2, v2, v0

    iget-object v3, p2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO00o:[F

    aget v3, v3, v0

    invoke-static {v2, v3, p3}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0oO;->OooO0OO(FFF)F

    move-result v2

    aput v2, v1, v0

    .line 5
    iget-object v1, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO0O0:[I

    iget-object v2, p1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO0O0:[I

    aget v2, v2, v0

    iget-object v3, p2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO0O0:[I

    aget v3, v3, v0

    invoke-static {p3, v2, v3}, LOooO00o/OooO00o/OooO00o/OooOoO/OooO0O0;->OooO00o(FII)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot interpolate between gradients. Lengths vary ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO0O0:[I

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " vs "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO0O0:[I

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public OooO00o()[I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO0O0:[I

    return-object v0
.end method

.method public OooO0O0()[F
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO00o:[F

    return-object v0
.end method

.method public OooO0OO()I
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO00o/OooO00o/OooOo0o/OooOO0O/OooO0OO;->OooO0O0:[I

    array-length v0, v0

    return v0
.end method
