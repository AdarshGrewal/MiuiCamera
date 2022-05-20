.class public Lcom/android/camera2/vendortag/struct/AECFrameControl;
.super Ljava/lang/Object;
.source "AECFrameControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;,
        Lcom/android/camera2/vendortag/struct/AECFrameControl$MarshalQueryableAECFrameControl;
    }
.end annotation


# static fields
.field public static final EXPOSURE_INDEX_COUNT:I = 0x3


# instance fields
.field public mAecExposureDatas:[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

.field public mCompenADRCGain:F


# direct methods
.method public constructor <init>([Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    .line 2
    iput-object v0, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;->mAecExposureDatas:[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    .line 3
    iput-object p1, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;->mAecExposureDatas:[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    .line 4
    iput p2, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;->mCompenADRCGain:F

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera2/vendortag/struct/AECFrameControl;)[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;->mAecExposureDatas:[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    return-object p0
.end method


# virtual methods
.method public getAecExposureDatas()[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;->mAecExposureDatas:[Lcom/android/camera2/vendortag/struct/AECFrameControl$AECExposureData;

    return-object v0
.end method

.method public getCompenADRCGain()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/AECFrameControl;->mCompenADRCGain:F

    return v0
.end method
