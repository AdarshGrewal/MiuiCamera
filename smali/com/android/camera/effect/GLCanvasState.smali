.class public Lcom/android/camera/effect/GLCanvasState;
.super Ljava/lang/Object;
.source "GLCanvasState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;
    }
.end annotation


# instance fields
.field public mAlpha:F

.field public mBlendAlpha:F

.field public mCanvasStateStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final mIdentityMatrix:[F

.field public mMVPMatrix:[F

.field public mModelMatrix:[F

.field public mProjectionMatrix:[F

.field public mTexMatrix:[F

.field public mViewMatrix:[F


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvasStateStack:Ljava/util/Stack;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 3
    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    new-array v2, v0, [F

    .line 4
    iput-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    new-array v2, v0, [F

    .line 5
    iput-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    new-array v2, v0, [F

    .line 6
    iput-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    new-array v2, v0, [F

    .line 7
    iput-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    iput v2, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 9
    iput v2, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    new-array v0, v0, [F

    .line 10
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mIdentityMatrix:[F

    const/4 v0, 0x0

    .line 11
    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 14
    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public frustum(FFFF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    const/4 v1, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    return v0
.end method

.method public getBlendAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    return v0
.end method

.method public getFinalMatrix()[F
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    iget-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    iget-object v4, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2
    iget-object v10, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    iget-object v8, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v6, v10

    invoke-static/range {v6 .. v11}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mMVPMatrix:[F

    return-object v0
.end method

.method public getIdentityMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mIdentityMatrix:[F

    return-object v0
.end method

.method public getModelMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    return-object v0
.end method

.method public getProjectionMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    return-object v0
.end method

.method public getTexMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    return-object v0
.end method

.method public getViewMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    return-object v0
.end method

.method public identityAllM()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public identityModelM()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public identityProjectionM()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public identityTexM()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public identityViewM()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public multiplyAlpha(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 2
    iget v0, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    return-void
.end method

.method public multiplyMatrix([FI)V
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 1
    iget-object v3, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, v0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 2
    iput-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    return-void
.end method

.method public ortho(FFFF)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mProjectionMatrix:[F

    const/4 v1, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    return-void
.end method

.method public popState()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvasStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvasStateStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getModelMatrix()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getTexMatrix()[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    .line 5
    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->getBlendAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    return-void

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public projection(FFFFFFF)V
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_1

    .line 1
    invoke-static {p7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v0, v1, v4

    const/4 v4, 0x2

    aput v0, v1, v4

    const/4 v4, 0x3

    aput v0, v1, v4

    const/4 v4, 0x4

    aput v0, v1, v4

    const/4 v4, 0x5

    aput v3, v1, v4

    const/4 v4, 0x6

    aput v0, v1, v4

    const/4 v4, 0x7

    aput v0, v1, v4

    const/16 v4, 0x8

    neg-float p5, p5

    div-float/2addr p5, p7

    aput p5, v1, v4

    const/16 p5, 0x9

    neg-float p6, p6

    div-float/2addr p6, p7

    aput p6, v1, p5

    const/16 p5, 0xa

    aput v0, v1, p5

    const/16 p5, 0xb

    const/high16 p6, -0x40800000    # -1.0f

    div-float/2addr p6, p7

    aput p6, v1, p5

    const/16 p5, 0xc

    aput v0, v1, p5

    const/16 p5, 0xd

    aput v0, v1, p5

    const/16 p5, 0xe

    aput v0, v1, p5

    const/16 p5, 0xf

    aput v3, v1, p5

    .line 2
    invoke-virtual {p0, v1, v2}, Lcom/android/camera/effect/GLCanvasState;->multiplyMatrix([FI)V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/effect/GLCanvasState;->rotate(FFFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method public pushState()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mCanvasStateStack:Ljava/util/Stack;

    new-instance v1, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;

    iget-object v2, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    iget-object v3, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    iget v4, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    iget v5, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;-><init>([F[FFF)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public rotate(FFFF)V
    .locals 7

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-void
.end method

.method public scale(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 2
    iput p1, p0, Lcom/android/camera/effect/GLCanvasState;->mAlpha:F

    return-void
.end method

.method public setBlendAlpha(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 2
    iput p1, p0, Lcom/android/camera/effect/GLCanvasState;->mBlendAlpha:F

    return-void
.end method

.method public setIdentity()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public setLookAt(FFFFFFFFF)V
    .locals 12

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/camera/effect/GLCanvasState;->mViewMatrix:[F

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    return-void
.end method

.method public setTexMatrix(FFFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    sub-float/2addr p3, p1

    aput p3, v0, v1

    sub-float/2addr p4, p2

    const/4 p3, 0x5

    .line 3
    aput p4, v0, p3

    const/high16 p3, 0x3f800000    # 1.0f

    const/16 p4, 0xa

    .line 4
    aput p3, v0, p4

    const/16 p4, 0xc

    .line 5
    aput p1, v0, p4

    const/16 p1, 0xd

    .line 6
    aput p2, v0, p1

    const/16 p1, 0xf

    .line 7
    aput p3, v0, p1

    return-void
.end method

.method public setTexMatrix([F)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mTexMatrix:[F

    const/4 v1, 0x0

    const/16 v2, 0x10

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public translate(FF)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, p2, v2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method public translate(FFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState;->mModelMatrix:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method
