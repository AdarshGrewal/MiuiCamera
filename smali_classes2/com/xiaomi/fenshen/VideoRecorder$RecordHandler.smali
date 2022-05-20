.class public Lcom/xiaomi/fenshen/VideoRecorder$RecordHandler;
.super Landroid/os/Handler;
.source "VideoRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/fenshen/VideoRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecordHandler"
.end annotation


# static fields
.field public static final MSG_AUDIO_EOS:I = 0x4

.field public static final MSG_AUDIO_FORMAT:I = 0x2

.field public static final MSG_DRAW_FRAME:I = 0x5

.field public static final MSG_VIDEO_EOS:I = 0x3

.field public static final MSG_VIDEO_FORMAT:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/fenshen/VideoRecorder;


# direct methods
.method public constructor <init>(Lcom/xiaomi/fenshen/VideoRecorder;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/fenshen/VideoRecorder$RecordHandler;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "VideoRecorder"

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "got msg: draw frame"

    .line 2
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "got msg: audio EOS"

    .line 3
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder$RecordHandler;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Lcom/xiaomi/fenshen/VideoRecorder;->stopRecorder(I)V

    goto :goto_0

    :cond_2
    const-string v0, "got msg: video EOS"

    .line 5
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/xiaomi/fenshen/VideoRecorder$RecordHandler;->this$0:Lcom/xiaomi/fenshen/VideoRecorder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Lcom/xiaomi/fenshen/VideoRecorder;->stopRecorder(I)V

    goto :goto_0

    :cond_3
    const-string p1, "got msg: audio format"

    .line 7
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string p1, "got msg: video format"

    .line 8
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
