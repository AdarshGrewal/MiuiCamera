.class public Lcom/sensetime/stmobile/STBeautifyNative;
.super Ljava/lang/Object;
.source "STBeautifyNative.java"


# instance fields
.field public nativeHandle:J


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


# virtual methods
.method public native createInstance(II)I
.end method

.method public native destroyBeautify()V
.end method

.method public native processBufferInGLContext([BIII[Lcom/sensetime/stmobile/model/STMobile106;[BI[Lcom/sensetime/stmobile/model/STMobile106;)I
.end method

.method public native processBufferNotInGLContext([BIII[Lcom/sensetime/stmobile/model/STMobile106;[BI[Lcom/sensetime/stmobile/model/STMobile106;)I
.end method

.method public native processTexture(III[Lcom/sensetime/stmobile/model/STMobile106;I[Lcom/sensetime/stmobile/model/STMobile106;)I
.end method

.method public native processTextureAndOutputTexture(III[Lcom/sensetime/stmobile/model/STMobile106;I[BI[Lcom/sensetime/stmobile/model/STMobile106;)I
.end method

.method public native setParam(IF)I
.end method
