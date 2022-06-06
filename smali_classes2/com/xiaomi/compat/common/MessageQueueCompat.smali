.class public final Lcom/xiaomi/compat/common/MessageQueueCompat;
.super Ljava/lang/Object;
.source "MessageQueueCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPolling(Landroid/os/MessageQueue;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/MessageQueue;->isPolling()Z

    move-result p0

    return p0
.end method
