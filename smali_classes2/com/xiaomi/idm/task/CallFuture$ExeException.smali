.class public Lcom/xiaomi/idm/task/CallFuture$ExeException;
.super Ljava/util/concurrent/ExecutionException;
.source "CallFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/idm/task/CallFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExeException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/xiaomi/idm/task/CallFuture$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/xiaomi/idm/task/CallFuture$ExeException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
