.class public Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;
.super Ljava/lang/Object;
.source "RtspClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parameters"
.end annotation


# instance fields
.field public host:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public port:I

.field public session:Lnet/majorkernelpanic/streaming/Session;

.field public transport:I

.field public username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lnet/majorkernelpanic/streaming/rtsp/RtspClient$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;-><init>()V

    return-void
.end method

.method public static copyOf(Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;
    .locals 2

    .line 1
    new-instance v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;

    invoke-direct {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;-><init>()V

    .line 2
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->host:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->username:Ljava/lang/String;

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->username:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->password:Ljava/lang/String;

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->password:Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->path:Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->session:Lnet/majorkernelpanic/streaming/Session;

    .line 7
    iget v1, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    iput v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->port:I

    .line 8
    iget p0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    iput p0, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Parameters;->transport:I

    return-object v0
.end method
