.class public Lcom/android/camera/module/MiLiveModule$1;
.super Ljava/lang/Object;
.source "MiLiveModule.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$MiLiveRecorderControl$IRecorderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/MiLiveModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/module/MiLiveModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/MiLiveModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecorderCancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v0}, Lcom/android/camera/module/MiLiveModule;->access$600(Lcom/android/camera/module/MiLiveModule;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRecorderCancel"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v0}, Lcom/android/camera/module/MiLiveModule;->access$700(Lcom/android/camera/module/MiLiveModule;)V

    return-void
.end method

.method public onRecorderError()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v0}, Lcom/android/camera/module/MiLiveModule;->access$600(Lcom/android/camera/module/MiLiveModule;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onRecorderError"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v0}, Lcom/android/camera/module/MiLiveModule;->access$700(Lcom/android/camera/module/MiLiveModule;)V

    return-void
.end method

.method public onRecorderFinish(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    .line 2
    invoke-static {v1}, Lcom/android/camera/module/MiLiveModule;->access$500(Lcom/android/camera/module/MiLiveModule;)Lcom/android/camera/protocol/ModeProtocol$MiLiveConfigChanges;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$LiveSpeedChanges;->getTotalRecordingTime()J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p1}, Lcom/android/camera/module/MiLiveModule;->access$600(Lcom/android/camera/module/MiLiveModule;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onFinish of no segments !!"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p1}, Lcom/android/camera/module/MiLiveModule;->access$700(Lcom/android/camera/module/MiLiveModule;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v2}, Lcom/android/camera/module/MiLiveModule;->access$800(Lcom/android/camera/module/MiLiveModule;)V

    .line 6
    iget-object v2, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {v2, p1, p2}, Lcom/android/camera/module/MiLiveModule;->access$900(Lcom/android/camera/module/MiLiveModule;Ljava/util/List;Ljava/lang/String;)V

    :goto_1
    xor-int/lit8 p1, v1, 0x1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/camera/module/MiLiveModule$1;->this$0:Lcom/android/camera/module/MiLiveModule;

    invoke-static {p1}, Lcom/android/camera/module/MiLiveModule;->access$1000(Lcom/android/camera/module/MiLiveModule;)V

    :cond_2
    return-void
.end method

.method public onRecorderPaused(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/module/impl/component/ILive$ILiveSegmentData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
