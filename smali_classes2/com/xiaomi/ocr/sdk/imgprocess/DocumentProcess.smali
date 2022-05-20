.class public Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;
.super Ljava/lang/Object;
.source "DocumentProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$Singleton;,
        Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;,
        Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;,
        Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;,
        Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;,
        Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;,
        Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;
    }
.end annotation


# static fields
.field public static final POINTS_COUNT:I = 0x8

.field public static final TAG:Ljava/lang/String; = "DocumentProcess"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public nativeObj:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getFeatureSupport()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeSupportFeatures(Ljava/util/List;)V

    .line 3
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;->values()[Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$FeatureType;

    move-result-object v1

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 6
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v1, v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getInstance()Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$Singleton;->INSTANCE:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    invoke-static {p1, p2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeInit(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    .line 4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cachePath:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", init time:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DocumentProcess"

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static initAndRun(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeInitAndRun(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cachePath:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", initAndRun time:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DocumentProcess"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeIsAvailable()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public doAlginDocument([BLandroid/graphics/Bitmap;II[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F
    .locals 12

    move-object v1, p0

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 1
    iget-object v11, v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2
    :try_start_0
    iget-wide v2, v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object v9, v0

    invoke-static/range {v2 .. v10}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeAlignDocumentBitmap(J[BLandroid/graphics/Bitmap;II[F[FI)V

    .line 3
    monitor-exit v11

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doCropAndEnhance(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Z)Landroid/graphics/Bitmap;
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    move-object v3, p1

    move-object v4, p2

    move v7, p5

    invoke-static/range {v1 .. v7}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeCropAndEnhanceBitmap(JLandroid/graphics/Bitmap;[FIIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public doCropAndEnhance(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Z)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    sget-object v4, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;->DEFAULT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doCropAndEnhance(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public doCropAndEnhance([BII[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;ZLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)Landroid/graphics/Bitmap;
    .locals 13

    move-object v1, p0

    .line 5
    iget-object v2, v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6
    :try_start_0
    iget-wide v3, v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;->DEFAULT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    move-object v5, p1

    move v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v11, p6

    invoke-static/range {v3 .. v12}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeCropAndEnhanceYUV(J[BII[FIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doCropImage(Landroid/graphics/Bitmap;[F)Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;->DEFAULT:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->doCropImage(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public doCropImage(Landroid/graphics/Bitmap;[FLcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;)Landroid/graphics/Bitmap;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-static {v1, v2, p1, p2, p3}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeCropImageBitmap(JLandroid/graphics/Bitmap;[FI)Landroid/graphics/Bitmap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public doDewarp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-static {v1, v2, p1}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeDewarpBitmap(JLandroid/graphics/Bitmap;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public doEnhance(Landroid/graphics/Bitmap;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$EnhanceType;Z)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {v1, v2, p1, p2, p3}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeEnhanceBitmap(JLandroid/graphics/Bitmap;IZ)I

    move-result p2

    if-nez p2, :cond_0

    .line 3
    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public doRemove(Landroid/graphics/Bitmap;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$InpaintType;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-static {v1, v2, p1, p2}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeFingerRemoveBitmap(JLandroid/graphics/Bitmap;I)I

    move-result p2

    if-nez p2, :cond_0

    .line 3
    monitor-exit v0

    return-object p1

    .line 4
    :cond_0
    monitor-exit v0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public doScanDocument([B[FIIIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)I
    .locals 11

    move-object v1, p0

    .line 7
    iget-object v2, v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_0
    iget-wide v3, v1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    move-object v5, p1

    move v6, p3

    move v7, p4

    move-object v9, p2

    invoke-static/range {v3 .. v10}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeScanDocumentYUV(J[BIII[FI)I

    move-result v0

    .line 9
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public doScanDocument(Landroid/graphics/Bitmap;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;)[F
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 1
    iget-object v7, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeScanDocumentBitmap(JLandroid/graphics/Bitmap;I[FI)I

    .line 3
    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public doScanDocument(Landroid/graphics/Bitmap;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F
    .locals 8

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 4
    iget-object v7, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5
    :try_start_0
    iget-wide v1, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    move-object v3, p1

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeScanDocumentBitmap(JLandroid/graphics/Bitmap;I[FI)I

    .line 6
    monitor-exit v7

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public doScanDocument([BIIIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$DocumentType;Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F
    .locals 8

    const/16 p4, 0x8

    new-array p4, p4, [F

    .line 10
    iget-object p5, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter p5

    .line 11
    :try_start_0
    iget-wide v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-virtual {p6}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {p7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeScanDocumentYUV(J[BIII[FI)I

    .line 12
    monitor-exit p5

    return-object p4

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRotateYUVWithBitmap(II)Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sensorOrient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bitmapOrient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x5a

    add-int/2addr p1, v0

    sub-int/2addr p1, p2

    neg-int p1, p1

    const/16 p2, -0x5a

    if-eq p1, p2, :cond_5

    const/16 p2, 0x10e

    if-ne p1, p2, :cond_0

    goto :goto_2

    :cond_0
    if-eq p1, v0, :cond_4

    const/16 p2, -0x10e

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0xb4

    if-eq p1, p2, :cond_3

    const/16 p2, -0xb4

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 2
    :cond_2
    sget-object p1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_0:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    return-object p1

    .line 3
    :cond_3
    :goto_0
    sget-object p1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_180:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    return-object p1

    .line 4
    :cond_4
    :goto_1
    sget-object p1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_90:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    return-object p1

    .line 5
    :cond_5
    :goto_2
    sget-object p1, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;->ROTATE_270:Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;

    return-object p1
.end method

.method public normalizationPoints([F)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    array-length v2, p1

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 3
    iget-wide v2, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-static {v2, v3, p1}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeNormalizationPoints(J[F)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit v0

    return v1

    .line 4
    :cond_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public release()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3
    :try_start_0
    iget-wide v3, p0, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess;->nativeObj:J

    invoke-static {v3, v4}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeRelease(J)V

    .line 4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DocumentProcess"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 6
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public rotatePoints([FIILcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$RotateFlags;)[F
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    .line 1
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-static {p1, p2, p3, p4, v0}, Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcessJNI;->nativeRotateDocumentYUVScanPoints([FIII[F)V

    return-object v0
.end method
