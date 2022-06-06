.class public Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningAiEnhancedVideo.java"


# static fields
.field public static final VALUE_OFF:Ljava/lang/String; = "OFF"

.field public static final VALUE_ON:Ljava/lang/String; = "ON"


# instance fields
.field public mCameraId:I


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "OFF"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "pref_camera_ai_enhanced_video"

    return-object p1
.end method

.method public getResText()I
    .locals 1

    const v0, 0x7f120775

    return v0
.end method

.method public isNormalIntent()Z
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v0

    return v0
.end method

.method public isSwitchOn(I)Z
    .locals 2

    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;->mCameraId:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;->isNormalIntent()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public reInit(I)V
    .locals 0

    iput p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;->mCameraId:I

    return-void
.end method

.method public setEnabled(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;->VALUE_ON:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/camera/data/data/runing/ComponentRunningAiEnhancedVideo;->VALUE_OFF:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
