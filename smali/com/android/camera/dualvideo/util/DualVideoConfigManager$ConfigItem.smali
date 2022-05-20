.class public Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;
.super Ljava/lang/Object;
.source "DualVideoConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/util/DualVideoConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConfigItem"
.end annotation


# instance fields
.field public mCameraId:I

.field public mDescription:Ljava/lang/String;

.field public mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field public mPresentZoom:F

.field public mRelativeZoom:F

.field public final synthetic this$0:Lcom/android/camera/dualvideo/util/DualVideoConfigManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/util/DualVideoConfigManager;Lcom/android/camera/dualvideo/render/LayoutType;IFFLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->this$0:Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p4, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mPresentZoom:F

    .line 3
    iput p3, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    .line 4
    iput p5, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mRelativeZoom:F

    .line 5
    iput-object p6, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mDescription:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method


# virtual methods
.method public getFaceType()Lcom/android/camera/dualvideo/render/FaceType;
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_FRONT:Lcom/android/camera/dualvideo/render/FaceType;

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConfigItem{mLayoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDescription=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mPresentZoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mPresentZoom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRelativeZoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mRelativeZoom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
