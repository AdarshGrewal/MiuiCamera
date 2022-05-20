.class public Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;
.super Ljava/lang/Object;
.source "AftersalesManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/aftersales/AftersalesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AftersalesRunnable"
.end annotation


# instance fields
.field public cameraId:I

.field public id:I

.field public final synthetic this$0:Lcom/android/camera/aftersales/AftersalesManager;

.field public time:J


# direct methods
.method public constructor <init>(Lcom/android/camera/aftersales/AftersalesManager;JII)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;->this$0:Lcom/android/camera/aftersales/AftersalesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p2, p0, Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;->time:J

    .line 3
    iput p4, p0, Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;->id:I

    .line 4
    iput p5, p0, Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;->cameraId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;->id:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "AfterSales"

    const-string v1, "could not count this event"

    .line 2
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;->this$0:Lcom/android/camera/aftersales/AftersalesManager;

    invoke-static {v0}, Lcom/android/camera/aftersales/AftersalesManager;->access$100(Lcom/android/camera/aftersales/AftersalesManager;)Lcom/android/camera/aftersales/counters/BaseCounter;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;->time:J

    iget v3, p0, Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;->id:I

    iget v4, p0, Lcom/android/camera/aftersales/AftersalesManager$AftersalesRunnable;->cameraId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/camera/aftersales/counters/BaseCounter;->count(JII)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
