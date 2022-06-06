.class public abstract Lcom/android/camera/module/interceptor/BaseASDInterceptor;
.super Lcom/android/camera/module/interceptor/BaseModuleInterceptor;
.source "BaseASDInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/BaseModuleInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract conditionDect()V
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScope()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public abstract getType()I
.end method

.method public abstract onCaptureResultNext(Landroid/hardware/camera2/CaptureResult;)V
.end method
