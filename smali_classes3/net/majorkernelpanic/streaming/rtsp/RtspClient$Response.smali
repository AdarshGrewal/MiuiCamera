.class public Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;
.super Ljava/lang/Object;
.source "RtspClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/rtsp/RtspClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# static fields
.field public static final regexStatus:Ljava/util/regex/Pattern;

.field public static final rexegAuthenticate:Ljava/util/regex/Pattern;

.field public static final rexegHeader:Ljava/util/regex/Pattern;

.field public static final rexegSession:Ljava/util/regex/Pattern;

.field public static final rexegTransport:Ljava/util/regex/Pattern;


# instance fields
.field public headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public status:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "RTSP/\\d.\\d (\\d+) (\\w+)"

    .line 1
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->regexStatus:Ljava/util/regex/Pattern;

    const-string v1, "(\\S+):(.+)"

    .line 2
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegHeader:Ljava/util/regex/Pattern;

    const-string v1, "realm=\"(.+)\",\\s+nonce=\"(\\w+)\""

    .line 3
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegAuthenticate:Ljava/util/regex/Pattern;

    const-string v1, "(\\d+)"

    .line 4
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegSession:Ljava/util/regex/Pattern;

    const-string v1, "client_port=(\\d+)-(\\d+).+server_port=(\\d+)-(\\d+)"

    .line 5
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegTransport:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    return-void
.end method

.method public static parseResponse(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;

    invoke-direct {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connection lost"

    if-eqz v1, :cond_2

    .line 3
    sget-object v3, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->regexStatus:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->status:I

    .line 6
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_0

    .line 8
    sget-object v4, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->rexegHeader:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    iget-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->headers:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response from server: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspClient$Response;->status:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RtspClient"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 12
    :cond_1
    new-instance p0, Ljava/net/SocketException;

    invoke-direct {p0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    new-instance p0, Ljava/net/SocketException;

    invoke-direct {p0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
