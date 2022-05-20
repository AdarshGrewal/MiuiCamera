.class public Lcom/android/camera/module/interceptor/CaptureInterceptor;
.super Lcom/android/camera/module/interceptor/BaseModuleInterceptor;
.source "CaptureInterceptor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/module/interceptor/BaseModuleInterceptor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScope()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
