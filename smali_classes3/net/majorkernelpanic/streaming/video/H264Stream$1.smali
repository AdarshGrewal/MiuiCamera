.class public Lnet/majorkernelpanic/streaming/video/H264Stream$1;
.super Ljava/lang/Object;
.source "H264Stream.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/majorkernelpanic/streaming/video/H264Stream;->testMediaRecorderAPI()Lnet/majorkernelpanic/streaming/mp4/MP4Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/majorkernelpanic/streaming/video/H264Stream;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/video/H264Stream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/H264Stream$1;->this$0:Lnet/majorkernelpanic/streaming/video/H264Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 0

    const-string p1, "H264Stream"

    const-string p3, "MediaRecorder callback called !"

    .line 1
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x320

    if-ne p2, p3, :cond_0

    const-string p2, "MediaRecorder: MAX_DURATION_REACHED"

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/16 p3, 0x321

    if-ne p2, p3, :cond_1

    const-string p2, "MediaRecorder: MAX_FILESIZE_REACHED"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    const-string p2, "MediaRecorder: INFO_UNKNOWN"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p2, "WTF ?"

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/video/H264Stream$1;->this$0:Lnet/majorkernelpanic/streaming/video/H264Stream;

    invoke-static {p1}, Lnet/majorkernelpanic/streaming/video/H264Stream;->access$000(Lnet/majorkernelpanic/streaming/video/H264Stream;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
