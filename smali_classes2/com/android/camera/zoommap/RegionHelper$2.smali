.class public Lcom/android/camera/zoommap/RegionHelper$2;
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


# direct methods
.method public constructor <init>(Lcom/android/camera/zoommap/RegionHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$2;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 1
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
    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$2;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    const-string v0, "TARGET_Y_TAG"

    invoke-static {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p2

    invoke-virtual {p2}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/camera/zoommap/RegionHelper;->access$202(Lcom/android/camera/zoommap/RegionHelper;I)I

    .line 2
    iget-object p1, p0, Lcom/android/camera/zoommap/RegionHelper$2;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-static {p1}, Lcom/android/camera/zoommap/RegionHelper;->access$100(Lcom/android/camera/zoommap/RegionHelper;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/zoommap/RegionHelper$2;->this$0:Lcom/android/camera/zoommap/RegionHelper;

    invoke-static {p2}, Lcom/android/camera/zoommap/RegionHelper;->access$200(Lcom/android/camera/zoommap/RegionHelper;)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
