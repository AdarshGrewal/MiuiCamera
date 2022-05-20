.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field public static final IsOpenDebug:Z = true

.field public static final PREFIX:Ljava/lang/String; = "MimojiFaceUnity_"

.field public static final TYPE_D:I = 0x1

.field public static final TYPE_E:I = 0x4

.field public static final TYPE_I:I = 0x2

.field public static final TYPE_V:I = 0x0

.field public static final TYPE_W:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugPrintStack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1
    invoke-static {v1, v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logMsg(ZILjava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Lcom/android/camera/log/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logMsg(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logMsg(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logMsg(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logMsg(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logMsg(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "MimojiFaceUnity_ , "

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static logShowD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0, v0, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logMsg(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logShowE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logMsg(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logShowI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logMsg(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logShowV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logMsg(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logShowW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logMsg(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logV(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logMsg(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1, p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logMsg(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
