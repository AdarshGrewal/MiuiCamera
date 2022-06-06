.class public abstract Lcom/android/camera2/MiCamera2Preview;
.super Ljava/lang/Object;
.source "MiCamera2Preview.java"


# instance fields
.field public mBogusCameraId:I

.field public mCurrentModule:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    iput p2, p0, Lcom/android/camera2/MiCamera2Preview;->mBogusCameraId:I

    return-void
.end method


# virtual methods
.method public needForCapture()Z
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xad

    if-eq v0, v1, :cond_1

    const/16 v1, 0xaf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xba

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb6

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public needForFrontCamera()Z
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2Preview;->mBogusCameraId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public needForManually()Z
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public needForNormalCapture()Z
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needForPortrait()Z
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v1, 0xab

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needForProVideo()Z
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_0

    invoke-static {}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o0O0oO0()LOooO0O0/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO0O0/OooO0Oo/OooO00o/OooO0O0;->o00OOO0O()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera2/MiCamera2Preview;->mBogusCameraId:I

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v1, 0xcf

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public needForVideo()Z
    .locals 2

    iget v0, p0, Lcom/android/camera2/MiCamera2Preview;->mCurrentModule:I

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xac

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
