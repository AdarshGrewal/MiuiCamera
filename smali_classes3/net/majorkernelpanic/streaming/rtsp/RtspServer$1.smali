.class public Lnet/majorkernelpanic/streaming/rtsp/RtspServer$1;
.super Ljava/lang/Object;
.source "RtspServer.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/rtsp/RtspServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;


# direct methods
.method public constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$1;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string v0, "rtsp_port"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$1;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    iget p2, p2, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mPort:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object p2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$1;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    iget v0, p2, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mPort:I

    if-eq p1, v0, :cond_1

    .line 4
    iput p1, p2, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mPort:I

    const/4 p1, 0x1

    .line 5
    invoke-static {p2, p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->access$002(Lnet/majorkernelpanic/streaming/rtsp/RtspServer;Z)Z

    .line 6
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$1;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->start()V

    goto :goto_0

    :cond_0
    const-string v0, "rtsp_enabled"

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$1;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    iget-boolean v1, p2, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mEnabled:Z

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p2, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->mEnabled:Z

    .line 9
    iget-object p1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$1;->this$0:Lnet/majorkernelpanic/streaming/rtsp/RtspServer;

    invoke-virtual {p1}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer;->start()V

    :cond_1
    :goto_0
    return-void
.end method
