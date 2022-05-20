.class public Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;
.super Ljava/lang/Object;
.source "AudioCalculateDecibels.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/AudioCalculateDecibels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioRecordRunnale"
.end annotation


# instance fields
.field public volatile mIsStopRecordThread:Z

.field public final synthetic this$0:Lcom/android/camera/AudioCalculateDecibels;


# direct methods
.method public constructor <init>(Lcom/android/camera/AudioCalculateDecibels;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->this$0:Lcom/android/camera/AudioCalculateDecibels;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->mIsStopRecordThread:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/AudioCalculateDecibels;Lcom/android/camera/AudioCalculateDecibels$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;-><init>(Lcom/android/camera/AudioCalculateDecibels;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->this$0:Lcom/android/camera/AudioCalculateDecibels;

    invoke-static {v0}, Lcom/android/camera/AudioCalculateDecibels;->access$000(Lcom/android/camera/AudioCalculateDecibels;)Landroid/media/AudioRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->mIsStopRecordThread:Z

    const-string v1, "AudioCalculateDecibels"

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->this$0:Lcom/android/camera/AudioCalculateDecibels;

    invoke-static {v0}, Lcom/android/camera/AudioCalculateDecibels;->access$100(Lcom/android/camera/AudioCalculateDecibels;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 3
    iget-boolean v2, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->mIsStopRecordThread:Z

    if-eqz v2, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsStopRecordThread=true,stop record return,current_thread:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-gtz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    :try_start_0
    new-array v2, v0, [B

    .line 6
    iget-object v3, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->this$0:Lcom/android/camera/AudioCalculateDecibels;

    invoke-static {v3}, Lcom/android/camera/AudioCalculateDecibels;->access$200(Lcom/android/camera/AudioCalculateDecibels;)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v3, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->this$0:Lcom/android/camera/AudioCalculateDecibels;

    invoke-static {v3, v2}, Lcom/android/camera/AudioCalculateDecibels;->access$300(Lcom/android/camera/AudioCalculateDecibels;[B)[F

    move-result-object v2

    .line 8
    iget-object v3, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->this$0:Lcom/android/camera/AudioCalculateDecibels;

    invoke-static {v3}, Lcom/android/camera/AudioCalculateDecibels;->access$400(Lcom/android/camera/AudioCalculateDecibels;)Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->this$0:Lcom/android/camera/AudioCalculateDecibels;

    invoke-static {v3}, Lcom/android/camera/AudioCalculateDecibels;->access$400(Lcom/android/camera/AudioCalculateDecibels;)Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/camera/AudioCalculateDecibels$OnVolumeValueListener;->onVolumeValue([F)V

    .line 10
    :cond_2
    iget-object v2, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->this$0:Lcom/android/camera/AudioCalculateDecibels;

    invoke-static {v2}, Lcom/android/camera/AudioCalculateDecibels;->access$500(Lcom/android/camera/AudioCalculateDecibels;)Ljava/io/FileOutputStream;

    move-result-object v2

    if-nez v2, :cond_3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio data outputstream is null,return thread:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 12
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->mIsStopRecordThread:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_4

    .line 13
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->this$0:Lcom/android/camera/AudioCalculateDecibels;

    invoke-static {v0}, Lcom/android/camera/AudioCalculateDecibels;->access$500(Lcom/android/camera/AudioCalculateDecibels;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 14
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->this$0:Lcom/android/camera/AudioCalculateDecibels;

    invoke-static {v1}, Lcom/android/camera/AudioCalculateDecibels;->access$500(Lcom/android/camera/AudioCalculateDecibels;)Ljava/io/FileOutputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->this$0:Lcom/android/camera/AudioCalculateDecibels;

    invoke-static {v2}, Lcom/android/camera/AudioCalculateDecibels;->access$200(Lcom/android/camera/AudioCalculateDecibels;)[B

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 17
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->this$0:Lcom/android/camera/AudioCalculateDecibels;

    invoke-static {v0}, Lcom/android/camera/AudioCalculateDecibels;->access$500(Lcom/android/camera/AudioCalculateDecibels;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 19
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "record stop, current_thread:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public setIsStopRecordThread(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/AudioCalculateDecibels$AudioRecordRunnale;->mIsStopRecordThread:Z

    return-void
.end method
