.class public Lcom/android/camera/zoommap/RegionHelper$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "RegionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/zoommap/RegionHelper;->moveToEdge()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/zoommap/RegionHelper;

.field public final synthetic val$hidden:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/android/camera/zoommap/RegionHelper;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$1;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    iput-object p2, p0, Lcom/android/camera/zoommap/RegionHelper$1;->val$hidden:Ljava/lang/Boolean;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$1;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    const-string v0, "TARGET_X_TAG"

    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/camera/zoommap/RegionHelper;->access$002(Lcom/android/camera/zoommap/RegionHelper;I)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$1;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-static {p1}, Lcom/android/camera/zoommap/RegionHelper;->access$100(Lcom/android/camera/zoommap/RegionHelper;)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/android/camera/zoommap/RegionHelper$1;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-static {v1}, Lcom/android/camera/zoommap/RegionHelper;->access$000(Lcom/android/camera/zoommap/RegionHelper;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$1;->val$hidden:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    iget-boolean p1, p1, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    if-eqz p1, :cond_0

    const-string p1, "RegionHelper"

    const-string p2, "hidden zoom map view"

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$1;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-static {p1}, Lcom/android/camera/zoommap/RegionHelper;->access$100(Lcom/android/camera/zoommap/RegionHelper;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
