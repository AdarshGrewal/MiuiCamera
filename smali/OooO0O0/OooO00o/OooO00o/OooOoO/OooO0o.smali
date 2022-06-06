.class public LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;
.super Ljava/lang/Object;
.source "MeanCalculator.java"


# instance fields
.field public OooO00o:F

.field public OooO0O0:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o()F
    .locals 2

    iget v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;->OooO0O0:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v1, p0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;->OooO00o:F

    int-to-float v0, v0

    div-float/2addr v1, v0

    return v1
.end method

.method public OooO00o(F)V
    .locals 2

    iget v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;->OooO00o:F

    add-float/2addr v0, p1

    iput v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;->OooO00o:F

    iget p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;->OooO0O0:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;->OooO0O0:I

    const v1, 0x7fffffff

    if-ne p1, v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;->OooO00o:F

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, LOooO0O0/OooO00o/OooO00o/OooOoO/OooO0o;->OooO0O0:I

    :cond_0
    return-void
.end method
