.class public Lcom/android/camera/fragment/top/FragmentTopAlert$17;
.super Ljava/lang/Object;
.source "FragmentTopAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/top/FragmentTopAlert;->showCloseConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$17;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2500()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showCloseConfirm onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert$17;->this$0:Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$2600(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->access$1700(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xd3

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$LiveAudioChanges;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf5

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$LiveRecordState;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordState;->isRecording()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$LiveRecordState;->isRecordingPaused()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$LiveAudioChanges;->clearAudio()V

    .line 7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 8
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 9
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_2
    :goto_0
    return-void
.end method
