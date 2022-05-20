.class public Lcom/android/camera/scene/FunctionMiAlgoASDEngine;
.super Ljava/lang/Object;
.source "FunctionMiAlgoASDEngine.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Landroid/hardware/camera2/CaptureResult;",
        "Landroid/hardware/camera2/CaptureResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "MI_ALGO_ASD_SCENE"


# instance fields
.field public mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field

.field public mResultParseList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera/scene/IResultParse;",
            ">;"
        }
    .end annotation
.end field

.field public mVendorTagArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/camera2/vendortag/VendorTag<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[",
            "Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "MI_ALGO_ASD_SCENE"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/Module;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mResultParseList:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mVendorTagArray:Landroid/util/SparseArray;

    .line 4
    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mVendorTagArray:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->NON_SEMANTIC_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mVendorTagArray:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->STATE_SCENE:Lcom/android/camera2/vendortag/VendorTag;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static LOGD(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MI_ALGO_ASD_SCENE"

    .line 3
    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private parseCaptureResult(Landroid/hardware/camera2/CaptureResult;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mVendorTagArray:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mVendorTagArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mVendorTagArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera2/vendortag/VendorTag;

    .line 4
    invoke-static {p1, v2}, Lcom/android/camera2/vendortag/VendorTagHelper;->getValueQuietly(Landroid/hardware/camera2/CaptureResult;Lcom/android/camera2/vendortag/VendorTag;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;

    if-nez v3, :cond_0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/camera2/vendortag/VendorTag;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") asd scene result null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-direct {p0, v1, v3}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->parseMiAlgoASDSceneResult(I[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private parseMiAlgoASDSceneResult(I[Lcom/android/camera2/vendortag/struct/MarshalQueryableASDScene$ASDScene;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mResultParseList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/scene/IResultParse;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_3

    .line 2
    new-instance v0, Lcom/android/camera/scene/StateClassResultParse;

    iget-object v1, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mModule:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/android/camera/scene/StateClassResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_3

    .line 3
    new-instance v0, Lcom/android/camera/scene/NoneSemanticsClassResultParse;

    iget-object v1, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mModule:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/android/camera/scene/NoneSemanticsClassResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 4
    new-instance v0, Lcom/android/camera/scene/SemanticsClassResultParse;

    iget-object v1, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mModule:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lcom/android/camera/scene/SemanticsClassResultParse;-><init>(Ljava/lang/ref/WeakReference;)V

    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 5
    iget-object v1, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mResultParseList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    invoke-interface {v0, p2}, Lcom/android/camera/scene/IResultParse;->parseMiAlgoAsdResult(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xa3

    if-eq v1, v2, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xcd

    if-eq v1, v2, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v1

    const/16 v2, 0xbb

    if-eq v1, v2, :cond_1

    const-string v0, "no capture mode!"

    .line 6
    invoke-static {v0}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v0

    if-nez v0, :cond_2

    return-object p1

    .line 8
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera2/CameraCapabilities;->getMiAlgoASDVersion()F

    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mi algo asd version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->LOGD(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    return-object p1

    .line 10
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->parseCaptureResult(Landroid/hardware/camera2/CaptureResult;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Landroid/hardware/camera2/CaptureResult;

    invoke-virtual {p0, p1}, Lcom/android/camera/scene/FunctionMiAlgoASDEngine;->apply(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/CaptureResult;

    move-result-object p1

    return-object p1
.end method
