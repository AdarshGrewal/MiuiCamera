.class public final Lcom/xiaomi/compat/common/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# static fields
.field public static final BIND_FOREGROUND_SERVICE:I = 0x4000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDisplayId(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    return p0
.end method
