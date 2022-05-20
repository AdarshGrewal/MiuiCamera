.class public Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;
.super Ljava/lang/Object;
.source "RtspServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/majorkernelpanic/streaming/rtsp/RtspServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final regexMethod:Ljava/util/regex/Pattern;

.field public static final rexegHeader:Ljava/util/regex/Pattern;


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

.field public method:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    const-string v1, "(\\w+) (\\S+) RTSP"

    .line 1
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->regexMethod:Ljava/util/regex/Pattern;

    const-string v1, "(\\S+):(.+)"

    .line 2
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->rexegHeader:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->headers:Ljava/util/HashMap;

    return-void
.end method

.method public static parseRequest(Ljava/io/BufferedReader;)Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 1
    new-instance v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;

    invoke-direct {v0}, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Client disconnected"

    if-eqz v1, :cond_2

    .line 3
    sget-object v3, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->regexMethod:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    const/4 v4, 0x2

    .line 6
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->uri:Ljava/lang/String;

    .line 7
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_0

    .line 8
    sget-object v5, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->rexegHeader:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 10
    iget-object v5, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->headers:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->method:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lnet/majorkernelpanic/streaming/rtsp/RtspServer$Request;->uri:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RtspServer"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

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
