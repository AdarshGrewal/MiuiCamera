.class public Lcom/miui/extravideo/deflicker/DeFlickerJni;
.super Ljava/lang/Object;
.source "DeFlickerJni.java"


# instance fields
.field public mDstImage:J

.field public mHandle:J

.field public mSrcImage:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "camera_960_mpbase"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "deflicker_jni"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/extravideo/deflicker/DeFlickerJni;->init(II)V

    return-void
.end method

.method private init(II)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/extravideo/deflicker/DeFlickerJni;->nativeInitHandle()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/extravideo/deflicker/DeFlickerJni;->mHandle:J

    .line 2
    invoke-static {p1, p2}, Lcom/miui/extravideo/deflicker/DeFlickerJni;->nativeAllocImage(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/extravideo/deflicker/DeFlickerJni;->mSrcImage:J

    .line 3
    invoke-static {p1, p2}, Lcom/miui/extravideo/deflicker/DeFlickerJni;->nativeAllocImage(II)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/extravideo/deflicker/DeFlickerJni;->mDstImage:J

    return-void
.end method

.method public static native nativeAllocImage(II)J
.end method

.method public static native nativeConfigImage(J[B)V
.end method

.method public static native nativeGetImage(J[B)V
.end method

.method public static native nativeInitHandle()J
.end method

.method public static native nativeProcess(JJJ)V
.end method

.method public static native nativeReleaseImage(J)V
.end method

.method public static native nativeUnInitHandle(J)V
.end method


# virtual methods
.method public process([B)V
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/miui/extravideo/deflicker/DeFlickerJni;->mSrcImage:J

    invoke-static {v0, v1, p1}, Lcom/miui/extravideo/deflicker/DeFlickerJni;->nativeConfigImage(J[B)V

    .line 2
    iget-wide v2, p0, Lcom/miui/extravideo/deflicker/DeFlickerJni;->mHandle:J

    iget-wide v4, p0, Lcom/miui/extravideo/deflicker/DeFlickerJni;->mSrcImage:J

    iget-wide v6, p0, Lcom/miui/extravideo/deflicker/DeFlickerJni;->mDstImage:J

    invoke-static/range {v2 .. v7}, Lcom/miui/extravideo/deflicker/DeFlickerJni;->nativeProcess(JJJ)V

    .line 3
    iget-wide v0, p0, Lcom/miui/extravideo/deflicker/DeFlickerJni;->mDstImage:J

    invoke-static {v0, v1, p1}, Lcom/miui/extravideo/deflicker/DeFlickerJni;->nativeGetImage(J[B)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/extravideo/deflicker/DeFlickerJni;->mHandle:J

    invoke-static {v0, v1}, Lcom/miui/extravideo/deflicker/DeFlickerJni;->nativeUnInitHandle(J)V

    .line 2
    iget-wide v0, p0, Lcom/miui/extravideo/deflicker/DeFlickerJni;->mSrcImage:J

    invoke-static {v0, v1}, Lcom/miui/extravideo/deflicker/DeFlickerJni;->nativeReleaseImage(J)V

    .line 3
    iget-wide v0, p0, Lcom/miui/extravideo/deflicker/DeFlickerJni;->mDstImage:J

    invoke-static {v0, v1}, Lcom/miui/extravideo/deflicker/DeFlickerJni;->nativeReleaseImage(J)V

    return-void
.end method
