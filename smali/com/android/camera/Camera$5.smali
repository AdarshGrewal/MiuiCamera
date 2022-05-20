.class public Lcom/android/camera/Camera$5;
.super Landroid/content/BroadcastReceiver;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.action.VOICE_COMMAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p2}, Lcom/android/camera/CameraIntentManager;->getInstance(Landroid/content/Intent;)Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->getVoiceControlAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QUERY_CAMERA_STATUS"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 6
    iget-object v2, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/external/NotifyExternalManager;->getInstance(Landroid/content/Context;)Lcom/android/camera/external/NotifyExternalManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/camera/external/NotifyExternalManager;->notifyModeAndFacing(II)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/IModuleState;->isDeparted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/android/camera/Camera$5;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getAppStateMgr()Lcom/android/camera/module/common/IAppStateMgr;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/camera/module/common/IAppStateMgr;->onBroadcastReceived(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
