.class public Lcom/android/camera/features/mimojis/commen/state/EditState;
.super Ljava/lang/Object;
.source "EditState.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/commen/state/IMiState;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Lcom/android/camera/ActivityBase;

.field public final mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

.field public mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

.field public final mTextureId:[I

.field public mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/commen/state/EditState;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/commen/state/EditState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mTextureId:[I

    .line 3
    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->getContext()Lcom/android/camera/ActivityBase;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mContext:Lcom/android/camera/ActivityBase;

    return-void
.end method


# virtual methods
.method public initModeState()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mContext:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    return-void
.end method

.method public onDrawFrame(Landroid/graphics/Rect;IIZZ)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/EditState;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onDrawFrame: mimojiControl is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    iget-object v5, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mTextureId:[I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->drawPreview(Landroid/graphics/Rect;IIZ[IZ)Z

    move-result p1

    return p1
.end method

.method public onModeStateBack(IZ)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->setModeState(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->backToPreview(Z)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mMiStateChange:Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/state/MiStateChangeImpl;->releaseRender()V

    .line 4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result p1

    .line 5
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p2, p2}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZ)V

    .line 6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa03

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;

    .line 8
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$LightingProtocol;->mimojiEnd()V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa2

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 10
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingFinish()V

    return-void
.end method

.method public onPreviewFrame(Landroid/media/Image;Lcom/android/camera2/Camera2Proxy;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mimojiControl:Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {p2, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onFaceDetectResult(Landroid/media/Image;)I

    .line 3
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object p1

    invoke-virtual {p1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0OO()I

    move-result p1

    const/4 p2, 0x3

    if-lt p1, p2, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/commen/state/EditState;->mRenderEngine:Lcom/android/camera/ui/RenderEngineAdapter;

    invoke-virtual {p1}, Lcom/android/camera/ui/RenderEngineAdapter;->requestRender()V

    :cond_1
    return-void

    .line 5
    :cond_2
    :goto_0
    sget-object p1, Lcom/android/camera/features/mimojis/commen/state/EditState;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "onDrawFrame: mimojiControl is null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShutterButtonClick(I)V
    .locals 0

    return-void
.end method
