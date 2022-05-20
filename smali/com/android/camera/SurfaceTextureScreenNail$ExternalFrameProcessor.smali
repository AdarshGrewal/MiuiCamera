.class public interface abstract Lcom/android/camera/SurfaceTextureScreenNail$ExternalFrameProcessor;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SurfaceTextureScreenNail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ExternalFrameProcessor"
.end annotation


# virtual methods
.method public getProcessorType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNeedCopyPreviewFromExternal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isProcessorReady()Z
.end method

.method public onDrawFrame(Lcom/android/gallery3d/ui/GLCanvasImpl;Lcom/android/camera/CameraScreenNail;)V
    .locals 0

    return-void
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZ)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceViewPause()V
    .locals 0

    return-void
.end method

.method public onSurfaceViewResume()V
    .locals 0

    return-void
.end method

.method public releaseRender()V
    .locals 0

    return-void
.end method
