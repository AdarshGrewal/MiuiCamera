.class public Lmiuix/util/Log$FileLoggerInstance;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/util/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileLoggerInstance"
.end annotation


# static fields
.field public static facade:Lmiuix/util/Log$Facade;

.field public static volatile singleton:Lmiuix/util/Log$FileLoggerInstance;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/util/Log$Facade;

    invoke-static {p1}, Lmiuix/internal/log/LoggerFactory;->getFileLogger(Landroid/content/Context;)Lmiuix/internal/log/Logger;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmiuix/util/Log$Facade;-><init>(Lmiuix/internal/log/Logger;Lmiuix/util/Log$1;)V

    sput-object v0, Lmiuix/util/Log$FileLoggerInstance;->facade:Lmiuix/util/Log$Facade;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lmiuix/util/Log$FileLoggerInstance;->singleton:Lmiuix/util/Log$FileLoggerInstance;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lmiuix/util/Log$FileLoggerInstance;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lmiuix/util/Log$FileLoggerInstance;->singleton:Lmiuix/util/Log$FileLoggerInstance;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lmiuix/util/Log$FileLoggerInstance;

    invoke-direct {v1, p0}, Lmiuix/util/Log$FileLoggerInstance;-><init>(Landroid/content/Context;)V

    sput-object v1, Lmiuix/util/Log$FileLoggerInstance;->singleton:Lmiuix/util/Log$FileLoggerInstance;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static instance()Lmiuix/util/Log$Facade;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/util/Log$FileLoggerInstance;->facade:Lmiuix/util/Log$Facade;

    return-object v0
.end method
