.class public Lcom/android/camera/fragment/subtitle/SoundWaveView$1;
.super Landroid/os/Handler;
.source "SoundWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/subtitle/SoundWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/subtitle/SoundWaveView;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/subtitle/SoundWaveView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/SoundWaveView$1;->this$0:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/SoundWaveView$1;->this$0:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->access$000(Lcom/android/camera/fragment/subtitle/SoundWaveView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/SoundWaveView$1;->this$0:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->access$100(Lcom/android/camera/fragment/subtitle/SoundWaveView;)[F

    move-result-object p1

    const/4 v1, 0x0

    aget p1, p1, v1

    iget-object v2, p0, Lcom/android/camera/fragment/subtitle/SoundWaveView$1;->this$0:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-static {v2}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->access$200(Lcom/android/camera/fragment/subtitle/SoundWaveView;)[F

    move-result-object v2

    aget v1, v2, v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/SoundWaveView$1;->this$0:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->access$300(Lcom/android/camera/fragment/subtitle/SoundWaveView;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/SoundWaveView$1;->this$0:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/subtitle/SoundWaveView$1;->this$0:Lcom/android/camera/fragment/subtitle/SoundWaveView;

    invoke-static {p1}, Lcom/android/camera/fragment/subtitle/SoundWaveView;->access$300(Lcom/android/camera/fragment/subtitle/SoundWaveView;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x1e

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
