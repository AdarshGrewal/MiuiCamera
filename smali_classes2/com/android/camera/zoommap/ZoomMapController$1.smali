.class public Lcom/android/camera/zoommap/ZoomMapController$1;
.super Ljava/lang/Object;
.source "ZoomMapController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/zoommap/ZoomMapController;->initGLTextureView(Lcom/android/camera/ActivityBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mLastX:I

.field public mLastY:I

.field public final synthetic this$0:Lcom/android/camera/zoommap/ZoomMapController;


# direct methods
.method public constructor <init>(Lcom/android/camera/zoommap/ZoomMapController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_5

    const/4 v3, 0x0

    if-eq p2, v2, :cond_2

    const/4 v4, 0x2

    if-eq p2, v4, :cond_0

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    return v3

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-static {p2}, Lcom/android/camera/zoommap/ZoomMapController;->access$000(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/zoommap/RegionHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/zoommap/RegionHelper;->isHovering()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget p2, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->mLastX:I

    sub-int p2, v0, p2

    .line 6
    iget v3, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->mLastY:I

    sub-int v3, v1, v3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    int-to-float p2, p2

    add-float/2addr v4, p2

    float-to-int p2, v4

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    int-to-float v3, v3

    add-float/2addr p1, v3

    float-to-int p1, p1

    .line 9
    iget-object v3, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-static {v3}, Lcom/android/camera/zoommap/ZoomMapController;->access$000(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/zoommap/RegionHelper;

    move-result-object v3

    invoke-virtual {v3, p2, p1}, Lcom/android/camera/zoommap/RegionHelper;->updateTranslation(II)V

    .line 10
    iput v0, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->mLastX:I

    .line 11
    iput v1, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->mLastY:I

    return v2

    :cond_1
    return v3

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-static {p1}, Lcom/android/camera/zoommap/ZoomMapController;->access$000(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/zoommap/RegionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/zoommap/RegionHelper;->isHovering()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-static {p1}, Lcom/android/camera/zoommap/ZoomMapController;->access$000(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/zoommap/RegionHelper;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/camera/zoommap/RegionHelper;->setHovering(Z)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-static {p1}, Lcom/android/camera/zoommap/ZoomMapController;->access$000(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/zoommap/RegionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/zoommap/RegionHelper;->moveToEdge()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackZoomMapRemoveWindow()V

    const-string p1, "ZoomMap"

    const-string p2, "hidden pip window"

    .line 16
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-static {p1}, Lcom/android/camera/zoommap/ZoomMapController;->access$100(Lcom/android/camera/zoommap/ZoomMapController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-static {p1}, Lcom/android/camera/zoommap/ZoomMapController;->access$200(Lcom/android/camera/zoommap/ZoomMapController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    return v2

    :cond_4
    return v3

    .line 19
    :cond_5
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-static {p1}, Lcom/android/camera/zoommap/ZoomMapController;->access$000(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/zoommap/RegionHelper;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/zoommap/RegionHelper;->setHovering(Z)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->this$0:Lcom/android/camera/zoommap/ZoomMapController;

    invoke-static {p1}, Lcom/android/camera/zoommap/ZoomMapController;->access$000(Lcom/android/camera/zoommap/ZoomMapController;)Lcom/android/camera/zoommap/RegionHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/zoommap/RegionHelper;->initAnimConfig()V

    .line 21
    iput v0, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->mLastX:I

    .line 22
    iput v1, p0, Lcom/android/camera/zoommap/ZoomMapController$1;->mLastY:I

    return v2
.end method
