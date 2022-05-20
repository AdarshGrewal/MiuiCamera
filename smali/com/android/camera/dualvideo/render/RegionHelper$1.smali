.class public Lcom/android/camera/dualvideo/render/RegionHelper$1;
.super Lmiuix/animation/listener/TransitionListener;
.source "RegionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/dualvideo/render/RegionHelper;->moveToEdge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/dualvideo/render/RegionHelper;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/render/RegionHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper$1;->this$0:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Lmiuix/animation/listener/UpdateInfo;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo p1, "xSpeed_tag"

    .line 1
    invoke-static {p2, p1}, Lmiuix/animation/listener/UpdateInfo;->findByName(Ljava/util/Collection;Ljava/lang/String;)Lmiuix/animation/listener/UpdateInfo;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    move-result p1

    .line 2
    iget-object p2, p0, Lcom/android/camera/dualvideo/render/RegionHelper$1;->this$0:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-static {p2, p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->access$002(Lcom/android/camera/dualvideo/render/RegionHelper;I)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/dualvideo/render/RegionHelper$1;->this$0:Lcom/android/camera/dualvideo/render/RegionHelper;

    invoke-static {p1}, Lcom/android/camera/dualvideo/render/RegionHelper;->access$100(Lcom/android/camera/dualvideo/render/RegionHelper;)Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/camera/dualvideo/render/RegionHelper$UpdatedListener;->onUpdated()V

    return-void
.end method
