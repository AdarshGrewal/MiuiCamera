.class public Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;
.super Ljava/lang/Object;
.source "CameraModuleDeviceParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/CameraModuleDeviceParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public isImageCaptureIntent:Z

.field public isParallelEnabled:Z

.field public mActualId:I

.field public mBogusId:I

.field public mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mModuleIndex:I


# direct methods
.method public constructor <init>(IIILcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mModuleIndex:I

    .line 3
    iput p2, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mBogusId:I

    .line 4
    iput p3, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mActualId:I

    .line 5
    iput-object p4, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/camera/features/mode/CameraModuleDeviceParam;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/CameraModuleDeviceParam;

    invoke-direct {v0}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;-><init>()V

    .line 2
    iget-boolean v1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->isParallelEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->setParallelEnabled(Z)V

    .line 3
    iget v1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mBogusId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setBogusId(I)V

    .line 4
    iget-boolean v1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->isImageCaptureIntent:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/CameraModuleDeviceParam;->setImageCaptureIntent(Z)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setCapabilities(Lcom/android/camera2/CameraCapabilities;)V

    .line 6
    iget v1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mActualId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setActualId(I)V

    .line 7
    iget v1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setModuleIndex(I)V

    return-object v0
.end method

.method public setImageCaptureIntent(Z)Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->isImageCaptureIntent:Z

    return-object p0
.end method

.method public setParallelEnabled(Z)Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/CameraModuleDeviceParam$Builder;->isParallelEnabled:Z

    return-object p0
.end method
