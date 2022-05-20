.class public Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
.super Ljava/lang/Object;
.source "VideoModuleDeviceParam.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mode/VideoModuleDeviceParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public is60FPSSupported:Z

.field public is8KCamcorder:Z

.field public isEisOn:Z

.field public mActualId:I

.field public mBogusId:I

.field public mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field public mModuleIndex:I

.field public mQuality:I

.field public needChooseVideoBeauty:Z

.field public needDisableEISAndOIS:Z


# direct methods
.method public constructor <init>(IIILcom/android/camera2/CameraCapabilities;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mModuleIndex:I

    .line 3
    iput p2, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mBogusId:I

    .line 4
    iput p3, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mActualId:I

    .line 5
    iput-object p4, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/camera/features/mode/VideoModuleDeviceParam;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mode/VideoModuleDeviceParam;

    invoke-direct {v0}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;-><init>()V

    .line 2
    iget v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mActualId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setActualId(I)V

    .line 3
    iget v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mBogusId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setBogusId(I)V

    .line 4
    iget v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mModuleIndex:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setModuleIndex(I)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/ModuleDeviceParam;->setCapabilities(Lcom/android/camera2/CameraCapabilities;)V

    .line 6
    iget-boolean v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->isEisOn:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->setEisOn(Z)V

    .line 7
    iget-boolean v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->is8KCamcorder:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->setIs8KCamcorder(Z)V

    .line 8
    iget-boolean v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->is60FPSSupported:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->setIs60FPSSupported(Z)V

    .line 9
    iget-boolean v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->needChooseVideoBeauty:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->setNeedChooseVideoBeauty(Z)V

    .line 10
    iget-boolean v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->needDisableEISAndOIS:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->setNeedDisableEISAndOIS(Z)V

    .line 11
    iget v1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mQuality:I

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mode/VideoModuleDeviceParam;->setQuality(I)V

    return-object v0
.end method

.method public setEisOn(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->isEisOn:Z

    return-object p0
.end method

.method public setIs60FPSSupported(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->is60FPSSupported:Z

    return-object p0
.end method

.method public setIs8KCamcorder(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->is8KCamcorder:Z

    return-object p0
.end method

.method public setNeedChooseVideoBeauty(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->needChooseVideoBeauty:Z

    return-object p0
.end method

.method public setNeedDisableEISAndOIS(Z)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->needDisableEISAndOIS:Z

    return-object p0
.end method

.method public setQuality(I)Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mode/VideoModuleDeviceParam$Builder;->mQuality:I

    return-object p0
.end method
