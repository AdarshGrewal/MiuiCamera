.class public Lcom/android/camera2/vendortag/struct/AWBFrameControl;
.super Ljava/lang/Object;
.source "AWBFrameControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/AWBFrameControl$MarshalQueryableAWBFrameControl;
    }
.end annotation


# instance fields
.field public mBGain:F

.field public mColorTemperature:I

.field public mGGain:F

.field public mRGain:F


# direct methods
.method public constructor <init>(FFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/camera2/vendortag/struct/AWBFrameControl;->mRGain:F

    iput p2, p0, Lcom/android/camera2/vendortag/struct/AWBFrameControl;->mGGain:F

    iput p3, p0, Lcom/android/camera2/vendortag/struct/AWBFrameControl;->mBGain:F

    iput p4, p0, Lcom/android/camera2/vendortag/struct/AWBFrameControl;->mColorTemperature:I

    return-void
.end method


# virtual methods
.method public getColorTemperature()I
    .locals 1

    iget v0, p0, Lcom/android/camera2/vendortag/struct/AWBFrameControl;->mColorTemperature:I

    return v0
.end method
