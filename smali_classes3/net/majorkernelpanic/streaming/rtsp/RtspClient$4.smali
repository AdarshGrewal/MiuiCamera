.class public Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;
.super Ljava/lang/Object;
.source "RtspClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$200(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$900(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)V

    .line 3
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$800(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$1000(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)V

    const-string v0, "RtspClient"

    const-string v1, "Connection lost with the server..."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$300(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    move-result-object v0

    iget-object v0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/Session;->stop()V

    .line 7
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$100(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$4;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v1}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$1100(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void
.end method
