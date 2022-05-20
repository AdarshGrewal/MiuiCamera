.class public Lcom/android/camera/module/loader/camera2/Camera2Result;
.super Ljava/lang/Object;
.source "Camera2Result.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/loader/camera2/Camera2Result$Camera2ResultType;
    }
.end annotation


# static fields
.field public static final RESULT_ERROR:I = 0x3

.field public static final RESULT_OPEN_NEW_OK:I = 0x2


# instance fields
.field public mCameraError:I

.field public mResult:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/module/loader/camera2/Camera2Result;->mResult:I

    return-void
.end method

.method public static create(I)Lcom/android/camera/module/loader/camera2/Camera2Result;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/module/loader/camera2/Camera2Result;

    invoke-direct {v0, p0}, Lcom/android/camera/module/loader/camera2/Camera2Result;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getCameraError()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/loader/camera2/Camera2Result;->mCameraError:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/module/loader/camera2/Camera2Result;->mResult:I

    return v0
.end method

.method public setCameraError(I)Lcom/android/camera/module/loader/camera2/Camera2Result;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/module/loader/camera2/Camera2Result;->mCameraError:I

    return-object p0
.end method
