.class public Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;
.super Ljava/lang/Object;
.source "MultiFeatureManagerImpl.java"

# interfaces
.implements Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$000(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$000(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/google/android/play/core/splitinstall/SplitInstallStateUpdatedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/play/core/listener/StateUpdatedListener;->onStateUpdate(Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$100(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v1, v2}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$102(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$100(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 9
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$100(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$200(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$100(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status()I

    move-result v1

    const/16 v2, 0x13

    const-string v3, "FML"

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const-string p1, "CANCELING"

    .line 13
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    :pswitch_2
    const-string p1, "CANCELED"

    .line 15
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$400(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x7

    invoke-static {v0, p1, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallResult(Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/observeable/VMFeature;->getState()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$500(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 20
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode()I

    move-result p1

    .line 21
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$400(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallResult(Ljava/lang/String;Ljava/lang/String;I)V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0xa

    const/16 v2, 0x102

    const/16 v3, 0x101

    if-eq p1, v1, :cond_3

    const/4 v1, -0x6

    if-eq p1, v1, :cond_3

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v3

    .line 23
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/VMFeature;->removeFeature(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$700(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :pswitch_5
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$400(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    invoke-static {v0, p1, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFeatureInstallResult(Ljava/lang/String;Ljava/lang/String;I)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p1

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/camera/data/observeable/VMFeature;->removeFeature(Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$600(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_6
    const-string p1, "INSTALLING"

    .line 30
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 31
    :pswitch_7
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p1

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "DOWNLOADED"

    .line 32
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 33
    :pswitch_8
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->getFeatureSize(Ljava/lang/String;)J

    move-result-wide v1

    .line 34
    invoke-virtual {p1}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v4

    long-to-float p1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr p1, v4

    long-to-float v1, v1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 35
    iget-object v1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {v1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object v1

    invoke-static {p1}, Lcom/android/camera/data/observeable/VMFeature;->wrapDownloadingProgress(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DOWNLOADING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_9
    const-string p1, "PENDING"

    .line 37
    invoke-static {v3, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object p1, p0, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->this$0:Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->access$300(Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;)Lcom/android/camera/data/observeable/VMFeature;

    move-result-object p1

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/data/observeable/VMFeature;->updateState(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x64
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onStateUpdate(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl$1;->onStateUpdate(Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;)V

    return-void
.end method
