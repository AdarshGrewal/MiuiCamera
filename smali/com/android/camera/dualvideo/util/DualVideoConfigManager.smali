.class public Lcom/android/camera/dualvideo/util/DualVideoConfigManager;
.super Ljava/lang/Object;
.source "DualVideoConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;
    }
.end annotation


# static fields
.field public static final FRONT_NAME:Ljava/lang/String; = "front"

.field public static final REMOTE_CAMERA_ID:I = 0x3e8

.field public static final REMOTE_NAME:Ljava/lang/String; = "remote"

.field public static final TAG:Ljava/lang/String; = "CameraIDManager"

.field public static mManager:Lcom/android/camera/dualvideo/util/DualVideoConfigManager;


# instance fields
.field public mConfigs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    .line 3
    invoke-direct {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->initConfig()V

    return-void
.end method

.method public static synthetic OooO(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_REMOTE:Lcom/android/camera/dualvideo/render/FaceType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)I
    .locals 0

    .line 3
    iget p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mPresentZoom:F

    iget p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mPresentZoom:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Ljava/lang/Integer;
    .locals 0

    .line 2
    iget p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO00o(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/Integer;)V
    .locals 2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 8
    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->REMOTE_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static synthetic OooO00o(ILcom/android/camera/dualvideo/render/LayoutType;)Z
    .locals 1

    .line 5
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result p1

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0}, Lcom/android/camera/dualvideo/render/LayoutType;->getIndex()I

    move-result v0

    add-int/2addr v0, p0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(ILcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    .line 4
    iget p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO00o(Ljava/lang/Integer;)Z
    .locals 1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Ljava/lang/String;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic OooO0O0(ILcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    .line 1
    iget p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/FaceType;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->getFaceType()Lcom/android/camera/dualvideo/render/FaceType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0OO(ILcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    .line 3
    iget p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0OO(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0Oo(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p0
.end method

.method public static synthetic OooO0Oo(ILcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    .line 3
    iget p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mCameraId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0Oo(Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 0

    .line 2
    iget-object p1, p1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0o(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Ljava/lang/Float;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mRelativeZoom:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0o0(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->PATCH_0:Lcom/android/camera/dualvideo/render/LayoutType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic OooO0oO(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Ljava/lang/Float;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mPresentZoom:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic OooO0oo(Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;)Ljava/lang/Float;
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;->mRelativeZoom:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private getDescription(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xe9f

    const/4 v4, 0x0

    const-string v5, "front"

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v2, v3, :cond_4

    const/16 v3, 0xea2

    if-eq v2, v3, :cond_3

    const v3, 0x3643aa

    if-eq v2, v3, :cond_2

    const v3, 0x37aed3

    if-eq v2, v3, :cond_1

    const v3, 0x5d2de29

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v6

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "wide"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "tele"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v8

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "uw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "ut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v7

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v0, :cond_7

    if-eq v1, v8, :cond_7

    if-eq v1, v7, :cond_7

    if-ne v1, v6, :cond_6

    return-object v5

    .line 2
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "X"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getIDByConfig(Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xe9f

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xea2

    if-eq v0, v1, :cond_3

    const v1, 0x3643aa

    if-eq v0, v1, :cond_2

    const v1, 0x37aed3

    if-eq v0, v1, :cond_1

    const v1, 0x5d2de29

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "front"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "wide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "tele"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "uw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "ut"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v5, :cond_9

    if-eq v0, v4, :cond_8

    if-eq v0, v3, :cond_7

    if-ne v0, v2, :cond_6

    .line 2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result p1

    return p1

    .line 3
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "config error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p1

    return p1

    .line 5
    :cond_8
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p1

    return p1

    .line 6
    :cond_9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p1

    return p1

    .line 7
    :cond_a
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p1

    return p1
.end method

.method private getLayoutType(I)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/render/LayoutType;->values()[Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOO0;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOO0;-><init>(I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p1
.end method

.method private getZoomById(I)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOO0o;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOO0o;-><init>(I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOO;

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method private declared-synchronized initConfig()V
    .locals 14

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooOO0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-direct {p0, v2}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getLayoutType(I)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v5

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const-string v9, "1X"

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;-><init>(Lcom/android/camera/dualvideo/util/DualVideoConfigManager;Lcom/android/camera/dualvideo/render/LayoutType;IFFLjava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    invoke-direct {p0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getLayoutType(I)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const-string v8, "front"

    move-object v2, v9

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;-><init>(Lcom/android/camera/dualvideo/util/DualVideoConfigManager;Lcom/android/camera/dualvideo/render/LayoutType;IFFLjava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6
    :cond_1
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 8
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 9
    iget-object v5, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    .line 10
    invoke-direct {p0, v3}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getLayoutType(I)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v8

    .line 11
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getIDByConfig(Ljava/lang/String;)I

    move-result v9

    .line 12
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/4 v6, 0x2

    .line 13
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 14
    invoke-direct {p0, v4}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getDescription(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v13

    move-object v7, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;-><init>(Lcom/android/camera/dualvideo/util/DualVideoConfigManager;Lcom/android/camera/dualvideo/render/LayoutType;IFFLjava/lang/String;)V

    .line 15
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const-string v0, "CameraIDManager"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGridWindowConfig:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;
    .locals 2

    const-class v0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mManager:Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    invoke-direct {v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;-><init>()V

    sput-object v1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mManager:Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    .line 3
    :cond_0
    sget-object v1, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mManager:Lcom/android/camera/dualvideo/util/DualVideoConfigManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static sortId([Ljava/lang/Integer;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/camera/dualvideo/util/RenderSourceType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/camera/dualvideo/util/Assert;->check(Z)V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 3
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOo00;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOo00;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOoo;

    invoke-direct {v1, v0}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOoo;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0

    .line 5
    :cond_1
    sget-object v3, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    aget-object v2, p0, v2

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    aget-object p0, p0, v1

    invoke-virtual {v0, v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p0

    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->isFrontCameraId(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 9
    invoke-static {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->switchMainSubId(Ljava/util/concurrent/ConcurrentHashMap;)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object p0

    .line 11
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getZoomById(I)F

    move-result v1

    .line 12
    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getZoomById(I)F

    move-result p0

    cmpl-float p0, p0, v1

    if-lez p0, :cond_4

    .line 13
    invoke-static {v0}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->switchMainSubId(Ljava/util/concurrent/ConcurrentHashMap;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static switchMainSubId(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/camera/dualvideo/util/RenderSourceType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    sget-object v2, Lcom/android/camera/dualvideo/util/RenderSourceType;->MAIN_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/android/camera/dualvideo/util/RenderSourceType;->SUB_SOURCE:Lcom/android/camera/dualvideo/util/RenderSourceType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized addExternalConfig(ILjava/lang/String;)Z
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOo0;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOo0;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 2
    monitor-exit p0

    return p1

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;

    iget-object v1, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getLayoutType(I)Lcom/android/camera/dualvideo/render/LayoutType;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v1, v8

    move-object v2, p0

    move v4, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;-><init>(Lcom/android/camera/dualvideo/util/DualVideoConfigManager;Lcom/android/camera/dualvideo/render/LayoutType;IFFLjava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 4
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCameraId(Lcom/android/camera/dualvideo/render/LayoutType;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOO0;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOO0;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOo;

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, -0x1

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getConfigDescription(Lcom/android/camera/dualvideo/render/LayoutType;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/dualvideo/render/LayoutType;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0O0;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0O0;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOO0O;

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getConfigs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/dualvideo/util/DualVideoConfigManager$ConfigItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFaceType(Lcom/android/camera/dualvideo/render/LayoutType;)Lcom/android/camera/dualvideo/render/FaceType;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOOO;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOOO;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOo0;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOo0;

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/render/FaceType;->FACE_BACK:Lcom/android/camera/dualvideo/render/FaceType;

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/FaceType;

    return-object p1
.end method

.method public getGridLayoutTypeById(I)Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0o;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0o;-><init>(I)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0oo;

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/camera/dualvideo/render/LayoutType;->UNDEFINED:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/dualvideo/render/LayoutType;

    return-object p1
.end method

.method public getMinZoom()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0oO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0oO;

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooOOOo;

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const v1, 0x3f19999a    # 0.6f

    .line 5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getPresentZoom(Lcom/android/camera/dualvideo/render/LayoutType;)F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO00o;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO00o;-><init>(Lcom/android/camera/dualvideo/render/LayoutType;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    sget-object v0, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0OO;

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public hasRemote()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0Oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0Oo;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeExternalConfig(I)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->mConfigs:Ljava/util/ArrayList;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0o0;

    invoke-direct {v1, p1}, LOooO00o/OooO0O0/OooO00o/Oooo0oo/o0000oO/OooO0o0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
