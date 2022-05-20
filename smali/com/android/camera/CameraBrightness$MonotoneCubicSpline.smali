.class public Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;
.super Landroid/util/Spline;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonotoneCubicSpline"
.end annotation


# instance fields
.field public mM:[F

.field public mX:[F

.field public mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 12

    .line 1
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 2
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_7

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    .line 3
    array-length v0, p1

    add-int/lit8 v2, v0, -0x1

    .line 4
    new-array v3, v2, [F

    .line 5
    new-array v4, v0, [F

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x0

    if-ge v6, v2, :cond_1

    add-int/lit8 v8, v6, 0x1

    .line 6
    aget v9, p1, v8

    aget v10, p1, v6

    sub-float/2addr v9, v10

    cmpg-float v7, v9, v7

    if-lez v7, :cond_0

    .line 7
    aget v7, p2, v8

    aget v10, p2, v6

    sub-float/2addr v7, v10

    div-float/2addr v7, v9

    aput v7, v3, v6

    move v6, v8

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The control points must all have strictly increasing X values."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    aget v6, v3, v5

    aput v6, v4, v5

    const/4 v6, 0x1

    :goto_1
    if-ge v6, v2, :cond_2

    add-int/lit8 v8, v6, -0x1

    .line 10
    aget v8, v3, v8

    aget v9, v3, v6

    add-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    aput v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v1

    .line 11
    aget v0, v3, v0

    aput v0, v4, v2

    :goto_2
    if-ge v5, v2, :cond_6

    .line 12
    aget v0, v3, v5

    cmpl-float v0, v0, v7

    if-nez v0, :cond_3

    .line 13
    aput v7, v4, v5

    add-int/lit8 v0, v5, 0x1

    .line 14
    aput v7, v4, v0

    goto :goto_3

    .line 15
    :cond_3
    aget v0, v4, v5

    aget v1, v3, v5

    div-float/2addr v0, v1

    add-int/lit8 v1, v5, 0x1

    .line 16
    aget v6, v4, v1

    aget v8, v3, v5

    div-float/2addr v6, v8

    cmpg-float v8, v0, v7

    if-ltz v8, :cond_5

    cmpg-float v8, v6, v7

    if-ltz v8, :cond_5

    float-to-double v8, v0

    float-to-double v10, v6

    .line 17
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x41100000    # 9.0f

    cmpl-float v9, v8, v9

    if-lez v9, :cond_4

    const/high16 v9, 0x40400000    # 3.0f

    div-float/2addr v9, v8

    mul-float/2addr v0, v9

    .line 18
    aget v8, v3, v5

    mul-float/2addr v0, v8

    aput v0, v4, v5

    mul-float/2addr v9, v6

    .line 19
    aget v0, v3, v5

    mul-float/2addr v9, v0

    aput v9, v4, v1

    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The control points must have monotonic Y values."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_6
    iput-object p1, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mX:[F

    .line 22
    iput-object p2, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mY:[F

    .line 23
    iput-object v4, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mM:[F

    return-void

    .line 24
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public interpolate(F)F
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mX:[F

    array-length v0, v0

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    return p1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mX:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mY:[F

    aget p1, p1, v2

    return p1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 5
    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mY:[F

    aget p1, p1, v0

    return p1

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v1, v2, 0x1

    aget v3, v0, v1

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_4

    .line 8
    aget v0, v0, v1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mY:[F

    aget p1, p1, v1

    return p1

    :cond_3
    move v2, v1

    goto :goto_0

    .line 10
    :cond_4
    aget v3, v0, v1

    aget v4, v0, v2

    sub-float/2addr v3, v4

    .line 11
    aget v0, v0, v2

    sub-float/2addr p1, v0

    div-float/2addr p1, v3

    .line 12
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mY:[F

    aget v4, v0, v2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, p1

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v7, v5, v6

    mul-float/2addr v4, v7

    iget-object v7, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mM:[F

    aget v2, v7, v2

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v4, v2

    sub-float v2, v6, p1

    mul-float/2addr v4, v2

    mul-float/2addr v4, v2

    aget v0, v0, v1

    const/high16 v2, 0x40400000    # 3.0f

    sub-float/2addr v2, v5

    mul-float/2addr v0, v2

    aget v1, v7, v1

    mul-float/2addr v3, v1

    sub-float v1, p1, v6

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    add-float/2addr v4, v0

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mX:[F

    array-length v1, v1

    const-string v2, "MonotoneCubicSpline{["

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    const-string v3, ", "

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v4, "("

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mX:[F

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mY:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ": "

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/CameraBrightness$MonotoneCubicSpline;->mM:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "]}"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
