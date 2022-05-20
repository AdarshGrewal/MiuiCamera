.class public Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;
.super Ljava/lang/Object;
.source "MiLiveConfigChangesImpl.java"

# interfaces
.implements Lcom/android/camera/module/impl/component/ILive$ILiveRecordingTimeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingTimeFinish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->access$000(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->access$000(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->access$000(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    instance-of v0, v0, Lcom/android/camera/module/MiLiveModule;

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl$1;->this$0:Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->access$000(Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;)Lcom/android/camera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/MiLiveModule;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/module/MiLiveModule;->stopVideoRecording(ZZ)V

    return-void
.end method

.method public onRecordingTimeUpdate(JF)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    div-float/2addr p1, p3

    float-to-long p1, p1

    const/4 p3, 0x0

    .line 3
    invoke-static {p1, p2, p3}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateRecordingTime(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0x3b1

    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 6
    invoke-interface {p2, p1, p3}, Lcom/android/camera/protocol/ModeProtocol$PresentationDisplay;->updateRecordingTime(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
