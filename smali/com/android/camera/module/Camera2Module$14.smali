.class public Lcom/android/camera/module/Camera2Module$14;
.super Ljava/lang/Object;
.source "Camera2Module.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/Camera2Module;->dealTimerBurst(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/Camera2Module;

.field public final synthetic val$totalCount:I


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Camera2Module;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/Camera2Module$14;->this$0:Lcom/android/camera/module/Camera2Module;

    iput p2, p0, Lcom/android/camera/module/Camera2Module$14;->val$totalCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/module/Camera2Module$14;->this$0:Lcom/android/camera/module/Camera2Module;

    invoke-static {v0}, Lcom/android/camera/module/Camera2Module;->access$5300(Lcom/android/camera/module/Camera2Module;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/module/Camera2Module$14;->val$totalCount:I

    invoke-virtual {v0, v1}, Lcom/android/camera/timerburst/TimerBurstController;->decreaseCount(I)V

    return-void
.end method
