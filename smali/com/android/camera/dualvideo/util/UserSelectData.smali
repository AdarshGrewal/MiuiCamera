.class public Lcom/android/camera/dualvideo/util/UserSelectData;
.super Ljava/lang/Object;
.source "UserSelectData.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "UserSelectData"


# instance fields
.field public mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field public mRecordLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

.field public mSelectIndex:Lcom/android/camera/dualvideo/util/SelectIndex;


# direct methods
.method public constructor <init>(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectIndex:Lcom/android/camera/dualvideo/util/SelectIndex;

    .line 3
    iput-object p2, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    .line 4
    iput-object p3, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mRecordLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/dualvideo/util/UserSelectData;)V
    .locals 2

    .line 5
    iget-object v0, p1, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectIndex:Lcom/android/camera/dualvideo/util/SelectIndex;

    iget-object v1, p1, Lcom/android/camera/dualvideo/util/UserSelectData;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    iget-object p1, p1, Lcom/android/camera/dualvideo/util/UserSelectData;->mRecordLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-direct {p0, v0, v1, p1}, Lcom/android/camera/dualvideo/util/UserSelectData;-><init>(Lcom/android/camera/dualvideo/util/SelectIndex;Lcom/android/camera/dualvideo/render/LayoutType;Lcom/android/camera/dualvideo/render/LayoutType;)V

    return-void
.end method


# virtual methods
.method public getCameraId()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->instance()Lcom/android/camera/dualvideo/util/DualVideoConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Lcom/android/camera/dualvideo/util/DualVideoConfigManager;->getCameraId(Lcom/android/camera/dualvideo/render/LayoutType;)I

    move-result v0

    return v0
.end method

.method public getSelectIndex()Lcom/android/camera/dualvideo/util/SelectIndex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectIndex:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-object v0
.end method

.method public getmGridLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object v0
.end method

.method public getmRecordLayoutType()Lcom/android/camera/dualvideo/render/LayoutType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mRecordLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-object v0
.end method

.method public setGridWindowLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method

.method public setSelectIndex(Lcom/android/camera/dualvideo/util/SelectIndex;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/dualvideo/util/SelectIndex;->INDEX_0:Lcom/android/camera/dualvideo/util/SelectIndex;

    if-ne p1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSelectIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserSelectData"

    invoke-static {v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectIndex:Lcom/android/camera/dualvideo/util/SelectIndex;

    return-void
.end method

.method public setmRecordLayoutType(Lcom/android/camera/dualvideo/render/LayoutType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mRecordLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserSelectData{mGridWindowLayoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mGridLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRenderLayoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mRecordLayoutType:Lcom/android/camera/dualvideo/render/LayoutType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSelectIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/dualvideo/util/UserSelectData;->mSelectIndex:Lcom/android/camera/dualvideo/util/SelectIndex;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
