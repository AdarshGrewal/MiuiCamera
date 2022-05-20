.class public final Lcom/android/camera/dualvideo/util/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Assertion failed"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static check(ZLjava/lang/Runnable;)V
    .locals 1

    .line 5
    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 7
    new-instance p0, Ljava/lang/AssertionError;

    const-string p1, "Assertion failed"

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static check(ZLjava/lang/String;)V
    .locals 1

    .line 3
    sget-boolean v0, Lcom/android/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
