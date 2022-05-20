.class public Lmiuix/internal/log/appender/LogcatAppender$1;
.super Ljava/lang/ThreadLocal;
.source "LogcatAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/log/appender/LogcatAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/internal/log/appender/LogcatAppender;


# direct methods
.method public constructor <init>(Lmiuix/internal/log/appender/LogcatAppender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/log/appender/LogcatAppender$1;->this$0:Lmiuix/internal/log/appender/LogcatAppender;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/internal/log/appender/LogcatAppender$1;->initialValue()Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public initialValue()Ljava/lang/StringBuilder;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    return-object v0
.end method
