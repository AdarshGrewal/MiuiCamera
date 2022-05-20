.class public Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;
.super Ljava/lang/Object;
.source "RtspClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->postMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

.field public final synthetic val$message:I


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    iput p2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;->val$message:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$1200(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspClient;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient;->access$1200(Lnet/majorkernelpanic/streaming/rtsp/RtspClient;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;

    move-result-object v0

    iget v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$6;->val$message:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Callback;->onRtspUpdate(ILjava/lang/Exception;)V

    :cond_0
    return-void
.end method
