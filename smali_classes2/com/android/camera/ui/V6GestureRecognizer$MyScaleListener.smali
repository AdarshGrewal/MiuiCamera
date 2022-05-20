.class public Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;
.super Lcom/android/camera/ui/zoom/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyScaleListener"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MyScaleListener"


# instance fields
.field public mZoomScaled:Z

.field public final weakRecognizer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/ui/V6GestureRecognizer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/ui/zoom/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->weakRecognizer:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->weakRecognizer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "MyScaleListener"

    const-string/jumbo v0, "onScale: recognizer released, returning false."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v2

    const/16 v3, 0x9

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v2

    if-ne v2, v3, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 5
    :cond_3
    :goto_0
    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    .line 6
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 7
    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getFocusY()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 8
    invoke-interface {v0, v1, v2, p1}, Lcom/android/camera/module/common/IUserEventMgr;->onScale(FFF)Z

    move-result p1

    .line 9
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    if-nez v0, :cond_4

    .line 10
    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    :cond_4
    return p1
.end method

.method public onScaleBegin(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->weakRecognizer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "MyScaleListener"

    const-string/jumbo v0, "onScaleBegin: recognizer released, returning false."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/module/common/IUserEventMgr;->isIgnoreTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    .line 5
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getFocusX()F

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/ui/zoom/ScaleGestureDetector;->getFocusY()F

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/android/camera/module/common/IUserEventMgr;->onScaleBegin(FF)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public onScaleEnd(Lcom/android/camera/ui/zoom/ScaleGestureDetector;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->weakRecognizer:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/V6GestureRecognizer;

    if-nez p1, :cond_0

    const-string p1, "MyScaleListener"

    const-string/jumbo v0, "onScaleEnd: recognizer released, returning."

    .line 2
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;->mZoomScaled:Z

    .line 5
    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->isRecording()Z

    move-result v0

    const-string v1, "gesture"

    invoke-static {v1, v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomAdjusted(Ljava/lang/String;Z)V

    .line 7
    :cond_1
    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/module/Module;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/module/common/IUserEventMgr;->onScaleEnd()V

    :cond_2
    return-void
.end method
