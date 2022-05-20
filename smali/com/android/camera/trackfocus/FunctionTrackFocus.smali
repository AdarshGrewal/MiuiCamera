.class public Lcom/android/camera/trackfocus/FunctionTrackFocus;
.super Lcom/android/camera/FuncPreviewMetadata;
.source "FunctionTrackFocus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/FuncPreviewMetadata<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Lcom/android/camera/trackfocus/TrackResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FunctionTrackFocus"


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/FuncPreviewMetadata;-><init>(Ljava/lang/ref/WeakReference;)V

    return-void
.end method


# virtual methods
.method public accept(Lcom/android/camera/trackfocus/TrackResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lcom/android/camera/FuncPreviewMetadata;->accept(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/FuncPreviewMetadata;->mModuleReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updateTrackFocusResult(Lcom/android/camera/trackfocus/TrackResult;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/android/camera/trackfocus/TrackResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/trackfocus/FunctionTrackFocus;->accept(Lcom/android/camera/trackfocus/TrackResult;)V

    return-void
.end method

.method public onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera/trackfocus/TrackResult;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/FuncPreviewMetadata;->mModuleReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/IModuleState;->isDeparted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object p1, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    return-object p1

    .line 6
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/camera2/params/Face;

    .line 7
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/trackfocus/TrackResult;->parseTrackResult(Lcom/android/camera2/CameraCapabilities;Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera/trackfocus/TrackResult;

    move-result-object p1

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseTrackResult result "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FunctionTrackFocus"

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/trackfocus/TrackResult;->isManualTrackMode()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    array-length v0, v1

    if-lez v0, :cond_2

    .line 10
    sget-object p1, Lcom/android/camera/trackfocus/TrackResult;->EMPTY:Lcom/android/camera/trackfocus/TrackResult;

    return-object p1

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreviewMetadata "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public bridge synthetic onPreviewMetadata(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/trackfocus/FunctionTrackFocus;->onPreviewMetadata(Landroid/hardware/camera2/CaptureResult;)Lcom/android/camera/trackfocus/TrackResult;

    move-result-object p1

    return-object p1
.end method
