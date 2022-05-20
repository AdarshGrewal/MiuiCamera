.class public Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;
.super Ljava/lang/Object;
.source "GLCanvasState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/GLCanvasState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CanvasStateConfig"
.end annotation


# instance fields
.field public mAlpha:F

.field public mBlendAlpha:F

.field public mModelMatrix:[F

.field public mTexMatrix:[F


# direct methods
.method public constructor <init>([F[FFF)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    new-array v2, v0, [F

    .line 3
    iput-object v2, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 4
    iput v2, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    const/high16 v2, -0x40800000    # -1.0f

    .line 5
    iput v2, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput p3, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    .line 9
    iput p4, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    return-void
.end method


# virtual methods
.method public getAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mAlpha:F

    return v0
.end method

.method public getBlendAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mBlendAlpha:F

    return v0
.end method

.method public getModelMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mModelMatrix:[F

    return-object v0
.end method

.method public getTexMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/effect/GLCanvasState$CanvasStateConfig;->mTexMatrix:[F

    return-object v0
.end method
