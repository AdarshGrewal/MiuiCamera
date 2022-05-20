.class public Lcom/android/camera/features/mimojis/commen/MimojiProcessing;
.super Lcom/android/camera/data/observeable/VMBase;
.source "MimojiProcessing.java"


# static fields
.field public static final MAX_STORAGE_STATE_NUM:I = 0x5


# instance fields
.field public mAvatarPanelState:I

.field public final mCurMimojiItem:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentMimojiList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

.field public final mIMiModeStateList:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mIsAvatarInited:Z

.field public mIsBgIconNeedShow:Z

.field public mIsChangeFrontCreate:Z

.field public mIsFuSdkLoadFinish:Z

.field public mIsLoading:Z

.field public mIsMaterialDownloading:Z

.field public mMimojiActionState:I

.field public mPanelState:I

.field public mPreviewState:I

.field public mRenderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

.field public mRotationDevice:I

.field public mTakePicIconIng:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/data/observeable/VMBase;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mAvatarPanelState:I

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mCurMimojiItem:Ljava/util/HashMap;

    .line 4
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsBgIconNeedShow:Z

    return-void
.end method


# virtual methods
.method public achieveEndOfCycle()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAvatarPanelState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mAvatarPanelState:I

    return v0
.end method

.method public getCurrentMimojiList()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mCurrentMimojiList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-object v0
.end method

.method public getMimojiActionState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mMimojiActionState:I

    return v0
.end method

.method public getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mCurMimojiItem:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    return-object p1
.end method

.method public getMimojiModeState(I)I
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-le v0, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-gt v0, p1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getMimojiPanelState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mPanelState:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mRotationDevice:I

    return v0
.end method

.method public getPreviewState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mPreviewState:I

    return v0
.end method

.method public getRenderMode()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mRenderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    return-object v0
.end method

.method public isAvatarInited()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsAvatarInited:Z

    return v0
.end method

.method public isBgIconNeedShow()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsBgIconNeedShow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiItem(Ljava/lang/Integer;)Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChangeFrontCreate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsChangeFrontCreate:Z

    return v0
.end method

.method public isFuSdkLoadFinish()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsFuSdkLoadFinish:Z

    return v0
.end method

.method public isInMimojiCreate()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInMimojiEdit()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInMimojiEmoticon()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInMimojiGif()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInMimojiPhoto()Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInMimojiPreview()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mMimojiActionState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isInMimojiVideo()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsLoading:Z

    return v0
.end method

.method public isMaterialDownloading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsMaterialDownloading:Z

    return v0
.end method

.method public isTakePicIconIng()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mTakePicIconIng:Z

    return v0
.end method

.method public onDeviceRotationChange(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mRotationDevice:I

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mTakePicIconIng:Z

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mCurMimojiItem:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 4
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mMimojiActionState:I

    .line 5
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mPanelState:I

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsFuSdkLoadFinish:Z

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsAvatarInited:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsChangeFrontCreate:Z

    .line 9
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsLoading:Z

    .line 10
    iput v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mPreviewState:I

    return-void
.end method

.method public rollbackData()V
    .locals 0

    return-void
.end method

.method public setAvatarPanelState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mAvatarPanelState:I

    return-void
.end method

.method public setBgIconNeedShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsBgIconNeedShow:Z

    return-void
.end method

.method public setChangeFrontCreate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsChangeFrontCreate:Z

    return-void
.end method

.method public setCurrentMimojiList(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mCurrentMimojiList:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiList;

    return-void
.end method

.method public setFuSdkLoadFinish(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsFuSdkLoadFinish:Z

    return-void
.end method

.method public setIsAvatarInited(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsAvatarInited:Z

    return-void
.end method

.method public declared-synchronized setIsLoading(Z)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsLoading:Z
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

.method public setMaterialDownloading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIsMaterialDownloading:Z

    return-void
.end method

.method public setMimojiActionState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mMimojiActionState:I

    return-void
.end method

.method public setMimojiItem(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiItem;Ljava/lang/Integer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mCurMimojiItem:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMimojiModeState(I)V
    .locals 2

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mPreviewState:I

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->remove(I)Ljava/lang/Object;

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mIMiModeStateList:Ljava/util/Stack;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMimojiPanelState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mPanelState:I

    return-void
.end method

.method public setNeedTakePic(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mTakePicIconIng:Z

    return-void
.end method

.method public setRenderMode(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->mRenderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    return-void
.end method
