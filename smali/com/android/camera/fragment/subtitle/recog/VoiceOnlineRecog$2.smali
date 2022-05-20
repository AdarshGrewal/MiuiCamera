.class public Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;
.super Ljava/lang/Object;
.source "VoiceOnlineRecog.java"

# interfaces
.implements Lio/reactivex/CompletableObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getSubtitleContentAsync(Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

.field public final synthetic val$listener:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    iput-object p2, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;->val$listener:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onComplete "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;->val$listener:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;->this$0:Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;

    invoke-virtual {v1}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->getSubtitleContent()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;->onResult(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/subtitle/recog/VoiceOnlineRecog$2;->val$listener:Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;

    if-eqz v0, :cond_0

    instance-of p1, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$SubtitleRecording$Listener;->onTimeout()V

    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
