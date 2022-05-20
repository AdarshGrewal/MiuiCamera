.class public abstract Lcom/android/camera/ui/FrameView;
.super Landroid/view/View;
.source "FrameView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field public static final TAG:Ljava/lang/String; = "FrameView"


# instance fields
.field public mCameraDisplayOrientation:I

.field public mIsBigEnoughRect:Z

.field public mMatrix:Landroid/graphics/Matrix;

.field public mMirror:Z

.field public mOrientation:I

.field public mPause:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/camera/ui/FrameView;->mMatrix:Landroid/graphics/Matrix;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public faceExists()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getFocusRect()Landroid/graphics/RectF;
.end method

.method public isFaceStable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNeedExposure()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mIsBigEnoughRect:Z

    return v0
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/ui/FrameView;->mPause:Z

    return-void
.end method

.method public setCameraDisplayOrientation(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FrameView;->mCameraDisplayOrientation:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCameraDisplayOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FrameView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setFaces([Lcom/android/camera2/CameraHardwareFace;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setMirror(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/ui/FrameView;->mMirror:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMirror="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FrameView"

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/ui/FrameView;->mOrientation:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setShowGenderAndAge(Z)V
    .locals 0

    return-void
.end method

.method public showFail()V
    .locals 0

    return-void
.end method

.method public showStart()V
    .locals 0

    return-void
.end method

.method public showSuccess()V
    .locals 0

    return-void
.end method
