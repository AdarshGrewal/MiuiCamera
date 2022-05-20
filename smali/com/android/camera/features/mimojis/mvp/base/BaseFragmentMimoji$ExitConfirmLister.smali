.class public Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;
.super Ljava/lang/Object;
.source "BaseFragmentMimoji.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExitConfirmLister"
.end annotation


# instance fields
.field public isClicked:Z

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;->this$0:Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;->isClicked:Z

    return-void
.end method


# virtual methods
.method public isClicked()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isClicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;->isClicked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;->isClicked:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;->isClicked:Z

    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji$ExitConfirmLister;->isClicked:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mvp/base/BaseFragmentMimoji;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showExitConfirm onClick positive"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "mimoji_play_exit"

    .line 3
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
