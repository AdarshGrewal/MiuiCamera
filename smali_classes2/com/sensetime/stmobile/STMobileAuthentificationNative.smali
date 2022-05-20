.class public Lcom/sensetime/stmobile/STMobileAuthentificationNative;
.super Ljava/lang/Object;
.source "STMobileAuthentificationNative.java"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "st_mobile"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "stmobile_jni"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkActiveCode(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native checkActiveCodeFromBuffer(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public static native generateActiveCode(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native generateActiveCodeFromBuffer(Ljava/lang/String;I)Ljava/lang/String;
.end method
