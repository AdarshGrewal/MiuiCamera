.class public Lcom/android/camera/tts/TTSHelper$BatchListener;
.super Ljava/lang/Object;
.source "TTSHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/tts/TTSHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatchListener"
.end annotation


# instance fields
.field public mBatchStarted:Z

.field public final mListener:Lcom/android/camera/tts/TTSHelper$Listener;

.field public final synthetic this$0:Lcom/android/camera/tts/TTSHelper;


# direct methods
.method public constructor <init>(Lcom/android/camera/tts/TTSHelper;Lcom/android/camera/tts/TTSHelper$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->mBatchStarted:Z

    .line 3
    iput-object p2, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->mListener:Lcom/android/camera/tts/TTSHelper$Listener;

    return-void
.end method

.method private handleBatchFinished(Landroid/util/Pair;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->this$0:Lcom/android/camera/tts/TTSHelper;

    iget-object v1, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->mListener:Lcom/android/camera/tts/TTSHelper$Listener;

    invoke-static {v0, v1, p2}, Lcom/android/camera/tts/TTSHelper;->access$900(Lcom/android/camera/tts/TTSHelper;Lcom/android/camera/tts/TTSHelper$Listener;Z)V

    .line 2
    iget-object p2, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {p2}, Lcom/android/camera/tts/TTSHelper;->access$000(Lcom/android/camera/tts/TTSHelper;)Ljava/util/Map;

    move-result-object p2

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onDone(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/camera/tts/TTSHelper$BatchListener;->handleBatchFinished(Landroid/util/Pair;Z)V

    :cond_0
    return-void
.end method

.method public onError(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {v1}, Lcom/android/camera/tts/TTSHelper;->access$700(Lcom/android/camera/tts/TTSHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->this$0:Lcom/android/camera/tts/TTSHelper;

    invoke-static {v0}, Lcom/android/camera/tts/TTSHelper;->access$800(Lcom/android/camera/tts/TTSHelper;)Lcom/android/camera/tts/TTSEngine;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/tts/TTSEngine;->stop()V

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/camera/tts/TTSHelper$BatchListener;->handleBatchFinished(Landroid/util/Pair;Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->mBatchStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->mBatchStarted:Z

    .line 3
    iget-object v0, p0, Lcom/android/camera/tts/TTSHelper$BatchListener;->mListener:Lcom/android/camera/tts/TTSHelper$Listener;

    invoke-interface {v0}, Lcom/android/camera/tts/TTSHelper$Listener;->onTTSStarted()V

    :cond_0
    return-void
.end method

.method public onStop(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/tts/TTSHelper$BatchListener;->handleBatchFinished(Landroid/util/Pair;Z)V

    return-void
.end method
