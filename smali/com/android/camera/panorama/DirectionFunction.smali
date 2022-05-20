.class public Lcom/android/camera/panorama/DirectionFunction;
.super Ljava/lang/Object;
.source "DirectionFunction.java"


# static fields
.field public static final DIRECTION_DOWN:I = 0x3

.field public static final DIRECTION_LEFT:I = 0x0

.field public static final DIRECTION_NONE:I = -0x1

.field public static final DIRECTION_RIGHT:I = 0x1

.field public static final DIRECTION_UP:I = 0x2

.field public static final ERROR_NO_EFFECTIVE_PIXEL:I = -0x1

.field public static final SUCCEEDED:I


# instance fields
.field public final mAngle:I

.field public mDirection:I

.field public final mInputHeight:I

.field public final mInputWidth:I

.field public final mMaxHeight:I

.field public final mMaxWidth:I

.field public final mScale:F


# direct methods
.method public constructor <init>(IIIIFI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/android/camera/panorama/DirectionFunction;->mDirection:I

    .line 3
    iput p1, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputWidth:I

    .line 4
    iput p2, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputHeight:I

    .line 5
    iput p5, p0, Lcom/android/camera/panorama/DirectionFunction;->mScale:F

    .line 6
    iput p6, p0, Lcom/android/camera/panorama/DirectionFunction;->mAngle:I

    .line 7
    iput p3, p0, Lcom/android/camera/panorama/DirectionFunction;->mMaxWidth:I

    .line 8
    iput p4, p0, Lcom/android/camera/panorama/DirectionFunction;->mMaxHeight:I

    return-void
.end method


# virtual methods
.method public enabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAngle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/panorama/DirectionFunction;->mAngle:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/panorama/DirectionFunction;->mDirection:I

    return v0
.end method

.method public getHorizontalPreviewSize()Landroid/util/Size;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/panorama/DirectionFunction;->mMaxWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/panorama/DirectionFunction;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    iget v2, p0, Lcom/android/camera/panorama/DirectionFunction;->mAngle:I

    const/16 v3, 0x5a

    if-eq v3, v2, :cond_1

    const/16 v3, 0x10e

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v2, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/panorama/DirectionFunction;->mScale:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    :goto_1
    and-int/lit8 v0, v0, -0x2

    and-int/lit8 v1, v1, -0x2

    .line 5
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputWidth:I

    iget v2, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/panorama/DirectionFunction;->mScale:F

    return v0
.end method

.method public getVerticalPreviewSize()Landroid/util/Size;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/panorama/DirectionFunction;->mMaxHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/panorama/DirectionFunction;->mScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    iget v2, p0, Lcom/android/camera/panorama/DirectionFunction;->mAngle:I

    const/16 v3, 0x5a

    if-eq v3, v2, :cond_1

    const/16 v3, 0x10e

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v2, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v1, v2

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/camera/panorama/DirectionFunction;->mInputHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/panorama/DirectionFunction;->mScale:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    :goto_1
    and-int/lit8 v1, v1, -0x2

    and-int/lit8 v0, v0, -0x2

    .line 5
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object v2
.end method
