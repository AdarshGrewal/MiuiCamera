.class public Lcom/android/camera/module/VideoModule$2;
.super Ljava/lang/Object;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera2/Camera2Proxy$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/VideoModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/VideoModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureShutter(Lcom/android/camera2/QuickViewParam;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {p1}, Lcom/android/camera/module/BaseModule;->isFrontCamera()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0OO;->OooOooo()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00oOo0o()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontMirror()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    move v0, p1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget v1, v1, Lcom/android/camera/module/BaseModule;->mModuleIndex:I

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->isCinematicAspectRatioEnabled(I)Z

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/camera/CameraScreenNail;->requestFullReadPixelsWithParams(ZZ)V

    return-void
.end method

.method public onPictureTakenFinished(ZJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget p2, p2, Lcom/android/camera/module/BaseModule;->mOrientation:I

    invoke-virtual {p1, p2}, Lcom/android/camera/CameraScreenNail;->animateCaptureWithDraw(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object p1, p1, Lcom/android/camera/module/BaseModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/CameraScreenNail;->setPreviewSaveListener(Lcom/android/camera/SurfaceTextureScreenNail$PreviewSaveListener;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/VideoModule$2;->this$0:Lcom/android/camera/module/VideoModule;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/camera/module/BaseModule;->setCameraState(I)V

    return-void
.end method
