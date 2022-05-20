.class public Lcom/android/camera2/vendortag/struct/CaptureExpTimes;
.super Ljava/lang/Object;
.source "CaptureExpTimes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;
    }
.end annotation


# static fields
.field public static final CAPTURE_EXP_TIME_TYPE_HDR:I = 0x4

.field public static final CAPTURE_EXP_TIME_TYPE_LLS:I = 0x3

.field public static final CAPTURE_EXP_TIME_TYPE_OWL:I = 0x2

.field public static final CAPTURE_EXP_TIME_TYPE_SE:I = 0x1

.field public static final HDR_TRIGGER_MODE_BOKEH_HDR:I = 0x5

.field public static final SUPER_NIGHT_TRIGGER_MODE_NONE:I = 0x0

.field public static final SUPER_NIGHT_TRIGGER_MODE_OWL:I = 0x2

.field public static final SUPER_NIGHT_TRIGGER_MODE_SE:I = 0x1

.field public static final SUPER_NIGHT_TRIGGER_MODE_TRIPOD_OWL:I = 0x4

.field public static final SUPER_NIGHT_TRIGGER_MODE_TRIPOD_SE:I = 0x3

.field public static final TAG:Ljava/lang/String; = "CaptureExpTimes"


# instance fields
.field public expTimes:[Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

.field public mTriggerMode:I

.field public size:I


# direct methods
.method public constructor <init>([B)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->size:I

    if-lez v0, :cond_0

    .line 4
    new-array v0, v0, [Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

    iput-object v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->expTimes:[Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->size:I

    if-ge v0, v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->expTimes:[Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

    new-instance v2, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

    invoke-direct {v2, p0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;-><init>(Lcom/android/camera2/vendortag/struct/CaptureExpTimes;)V

    aput-object v2, v1, v0

    .line 7
    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->expTimes:[Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->type:I

    .line 8
    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->expTimes:[Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->expTime:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static parseCaptureExpTimes(Landroid/hardware/camera2/CaptureResult;Z)Lcom/android/camera2/vendortag/struct/CaptureExpTimes;
    .locals 5

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->CAPTURE_EXP_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SUPER_NIGHT_SE_CAPTURE_TIME:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueSafely(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    if-eqz p1, :cond_4

    .line 5
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    new-instance v0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    invoke-direct {v0, p1}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;-><init>([B)V

    .line 7
    sget-object p1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->NON_SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    invoke-static {p0, p1}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    if-eqz p0, :cond_3

    .line 8
    array-length p1, p0

    if-lez p1, :cond_3

    .line 9
    array-length p1, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    aget-object v2, p0, v1

    .line 10
    iget v3, v2, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 11
    iget v2, v2, Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;->value:I

    shr-int/lit8 v2, v2, 0x8

    .line 12
    invoke-virtual {v0, v2}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->setNightTriggerMode(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseCaptureExpTimes([B)Lcom/android/camera2/vendortag/struct/CaptureExpTimes;
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;

    invoke-direct {v0, p0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;-><init>([B)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public forceTriggerLLS()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->mTriggerMode:I

    return-void
.end method

.method public getCaptureExpTime()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightOwlDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getSuperNightProCaptureTime()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->isSuperNightSE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getSuperNightSECaptureTime()I

    move-result v0

    return v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->getLLSCaptureTime()I

    move-result v0

    return v0
.end method

.method public getHdrCaptureExpTime()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->expTimes:[Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 2
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 3
    iget v5, v4, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 4
    iget v0, v4, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->expTime:I

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getLLSCaptureTime()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->expTimes:[Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 2
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 3
    iget v5, v4, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 4
    iget v0, v4, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->expTime:I

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getNightTriggerMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->mTriggerMode:I

    return v0
.end method

.method public getSuperNightProCaptureTime()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->expTimes:[Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 2
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 3
    iget v5, v4, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 4
    iget v0, v4, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->expTime:I

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSuperNightSECaptureTime()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->expTimes:[Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 2
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 3
    iget v5, v4, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->type:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 4
    iget v0, v4, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->expTime:I

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isHdrDetected()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->mTriggerMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLlsDetected()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->mTriggerMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuperNightOwlDetected()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->mTriggerMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuperNightSE()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->mTriggerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSuperNightTripodOwlDetected()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->mTriggerMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSuperNightTripodSeDetected()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->mTriggerMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setHdrDetected(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 1
    iput p1, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->mTriggerMode:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->mTriggerMode:I

    :goto_0
    return-void
.end method

.method public setNightTriggerMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->mTriggerMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->expTimes:[Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

    if-nez v0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/android/camera2/vendortag/struct/CaptureExpTimes;->expTimes:[Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4}, Lcom/android/camera2/vendortag/struct/CaptureExpTimes$CaptureExpTime;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
