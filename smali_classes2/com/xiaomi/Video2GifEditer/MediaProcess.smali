.class public Lcom/xiaomi/Video2GifEditer/MediaProcess;
.super Ljava/lang/Object;
.source "MediaProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/Video2GifEditer/MediaProcess$Callback;
    }
.end annotation


# static fields
.field public static final FILTER_SAMPLE_PARAMS:[Ljava/lang/String;

.field public static TAG:Ljava/lang/String; = "MediaProcess"


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "com.videofilter.basic"

    const-string v1, "com.videofilter.sweet"

    const-string v2, "com.videofilter.crema"

    const-string v3, "com.videofilter.nashville"

    const-string v4, "com.videofilter.aden"

    const-string v5, "com.videofilter.gingham"

    const-string v6, "com.videofilter.stinson"

    const-string v7, "com.videofilter.clarendon"

    const-string v8, "com.videofilter.juno"

    const-string v9, "com.videofilter.dogpatch"

    const-string v10, "com.videofilter.gray"

    .line 1
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->FILTER_SAMPLE_PARAMS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddCropFilter(Ljava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddSubtitleFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    sget-object v4, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Param Map: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v4, v0, 0x2

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 7
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "Param Map: <null, null>"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [Ljava/lang/String;

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddCropFilterJni([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static native AddCropFilterJni([Ljava/lang/String;)I
.end method

.method public static AddGrayscaleFilter()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddGrayscaleFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddGrayscaleFilterJni()I

    move-result v0

    return v0
.end method

.method public static native AddGrayscaleFilterJni()I
.end method

.method public static AddMotionFlowFilter()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddMotionFlowFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddMotionFlowFilterJni()I

    move-result v0

    return v0
.end method

.method public static native AddMotionFlowFilterJni()I
.end method

.method public static AddMp3MixFilter(Ljava/lang/String;JJFFJ)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddMp3MixFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static/range {p0 .. p8}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddMp3MixFilterJni(Ljava/lang/String;JJFFJ)I

    move-result p0

    return p0
.end method

.method public static native AddMp3MixFilterJni(Ljava/lang/String;JJFFJ)I
.end method

.method public static AddPhotoFilter(Ljava/lang/String;F)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddPhotoFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddPhotoFilterJni(Ljava/lang/String;F)I

    move-result p0

    return p0
.end method

.method public static native AddPhotoFilterJni(Ljava/lang/String;F)I
.end method

.method public static AddPngMixFilter(Ljava/lang/String;FFFF)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddPngMixFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddPngMixFilterJni(Ljava/lang/String;FFFF)I

    move-result p0

    return p0
.end method

.method public static native AddPngMixFilterJni(Ljava/lang/String;FFFF)I
.end method

.method public static AddReverseFilter()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddReverseFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddReverseFilterJni()I

    move-result v0

    return v0
.end method

.method public static native AddReverseFilterJni()I
.end method

.method public static AddRotateFilter(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddRotateFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddRotateFilterJni(I)I

    move-result p0

    return p0
.end method

.method public static native AddRotateFilterJni(I)I
.end method

.method public static AddScaleFilter(II)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddScaleFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddScaleFilterJni(II)I

    move-result p0

    return p0
.end method

.method public static native AddScaleFilterJni(II)I
.end method

.method public static AddShakeFilter()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddShakeFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddShakeFilterJni()I

    move-result v0

    return v0
.end method

.method public static native AddShakeFilterJni()I
.end method

.method public static AddSobelEdgeDetectionFilter()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddSobeEdgeDetectionFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddSobelEdgeDetectionFilterJni()I

    move-result v0

    return v0
.end method

.method public static native AddSobelEdgeDetectionFilterJni()I
.end method

.method public static AddSoulFilter()I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddSoulFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddSoulFilterJni()I

    move-result v0

    return v0
.end method

.method public static native AddSoulFilterJni()I
.end method

.method public static AddSubtitleFilter(Ljava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddSubtitleFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    sget-object v4, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Param Map: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v4, v0, 0x2

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 7
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "Param Map: <null, null>"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [Ljava/lang/String;

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddSubtitleFilterJni([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static native AddSubtitleFilterJni([Ljava/lang/String;)I
.end method

.method public static AddVideoMapFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddVideoMapFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0, p1, p2}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddVideoMapFilterJni(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static native AddVideoMapFilterJni(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static AddVideoSegmentFilter(JLjava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddVideoSegmentFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    sget-object v4, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Param Map: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v4, v0, 0x2

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 7
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    sget-object p2, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "Param Map: <null, null>"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [Ljava/lang/String;

    .line 9
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddVideoSegmentFilterJni(J[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static native AddVideoSegmentFilterJni(J[Ljava/lang/String;)I
.end method

.method public static AddVoiceChangeFilter(Ljava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "AddVoiceChangeFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 4
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    sget-object v4, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Param Map: <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit8 v4, v0, 0x2

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    .line 7
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "Param Map: <null, null>"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v0, [Ljava/lang/String;

    .line 9
    :cond_1
    invoke-static {v1}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->AddVoiceChangeFilterJni([Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static native AddVoiceChangeFilterJni([Ljava/lang/String;)I
.end method

.method public static CancelGifConvert(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "cancel CancelGifConvert "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->CancelGifConvertJni(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static native CancelGifConvertJni(Ljava/lang/String;)I
.end method

.method public static Convert(Ljava/lang/String;JLjava/lang/String;ZIIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "Convert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static/range {p0 .. p12}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->ConvertJni(Ljava/lang/String;JLjava/lang/String;ZIIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I

    move-result p0

    return p0
.end method

.method public static ConvertGif(Ljava/lang/String;Ljava/io/FileDescriptor;IIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I
    .locals 13

    .line 3
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "ConvertGif fd mode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v4, ""

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    .line 4
    invoke-static/range {v2 .. v12}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->ConvertGifJni(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;IIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I

    move-result v0

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ConvertGif failed, fd is null fd! "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ConvertGif(Ljava/lang/String;Ljava/lang/String;IIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I
    .locals 13

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "ConvertGif"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move/from16 v6, p3

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    move/from16 v11, p8

    move-object/from16 v12, p9

    .line 2
    invoke-static/range {v2 .. v12}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->ConvertGifJni(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;IIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I

    move-result v0

    return v0
.end method

.method public static native ConvertGifJni(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;IIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I
.end method

.method public static native ConvertJni(Ljava/lang/String;JLjava/lang/String;ZIIJJFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I
.end method

.method public static cancelmediaconvert(Ljava/lang/String;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "cancel mediaconvert "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->cancelmediaconvertJni(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static native cancelmediaconvertJni(Ljava/lang/String;)I
.end method

.method public static mediaconvert(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;FLjava/lang/String;FFFFZ[Lcom/xiaomi/Video2GifEditer/PngShowInfo;DIJJFLjava/lang/String;JJFFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/Video2GifEditer/MediaProcess;->TAG:Ljava/lang/String;

    const-string v1, "mediaconvert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static/range {p0 .. p28}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->mediaconvertJni(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;FLjava/lang/String;FFFFZ[Lcom/xiaomi/Video2GifEditer/PngShowInfo;DIJJFLjava/lang/String;JJFFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I

    move-result v0

    return v0
.end method

.method public static native mediaconvertJni(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;FLjava/lang/String;FFFFZ[Lcom/xiaomi/Video2GifEditer/PngShowInfo;DIJJFLjava/lang/String;JJFFLcom/xiaomi/Video2GifEditer/MediaProcess$Callback;)I
.end method

.method public static processCommand(Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xiaomi/Video2GifEditer/MediaProcess;->processCommandJni(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static native processCommandJni(Ljava/lang/String;)I
.end method
