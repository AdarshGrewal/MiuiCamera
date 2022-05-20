.class public Lcom/android/camera/Coverage$CoverageCommand;
.super Landroid/content/BroadcastReceiver;
.source "Coverage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Coverage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoverageCommand"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/Coverage$CoverageCommand;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/Coverage$CoverageCommand;->generateCoverageReport()V

    return-void
.end method

.method private generateCoverageReport()V
    .locals 7

    const-string v0, "Coverage"

    .line 1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd_HH-mm-ss_SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/local/tmp/coverage_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".ec"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 5
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string/jumbo v5, "org.jacoco.agent.rt.internal.Offline"

    .line 6
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "DATA"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    .line 7
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 8
    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 9
    new-instance v5, Lorg/jacoco/core/data/ExecutionDataStore;

    invoke-direct {v5}, Lorg/jacoco/core/data/ExecutionDataStore;-><init>()V

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jacoco/core/data/ExecutionData;

    .line 11
    invoke-virtual {v5, v6}, Lorg/jacoco/core/data/ExecutionDataStore;->put(Lorg/jacoco/core/data/ExecutionData;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v1, Lorg/jacoco/core/runtime/RuntimeData;

    invoke-direct {v1, v5}, Lorg/jacoco/core/runtime/RuntimeData;-><init>(Lorg/jacoco/core/data/ExecutionDataStore;)V

    .line 13
    invoke-direct {p0, v1, v4}, Lcom/android/camera/Coverage$CoverageCommand;->getExecutionData(Lorg/jacoco/core/runtime/RuntimeData;Z)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save file: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 16
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    .line 17
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void

    :goto_3
    if-eqz v3, :cond_2

    .line 19
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    .line 20
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_2
    :goto_4
    throw v1
.end method

.method private getExecutionData(Lorg/jacoco/core/runtime/RuntimeData;Z)[B
    .locals 2

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    :try_start_0
    new-instance v1, Lorg/jacoco/core/data/ExecutionDataWriter;

    invoke-direct {v1, v0}, Lorg/jacoco/core/data/ExecutionDataWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3
    invoke-virtual {p1, v1, v1, p2}, Lorg/jacoco/core/runtime/RuntimeData;->collect(Lorg/jacoco/core/data/IExecutionDataVisitor;Lorg/jacoco/core/data/ISessionInfoVisitor;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.GET_COVERAGE_EC"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/camera/Coverage$CoverageCommand$1;

    invoke-direct {p2, p0}, Lcom/android/camera/Coverage$CoverageCommand$1;-><init>(Lcom/android/camera/Coverage$CoverageCommand;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
