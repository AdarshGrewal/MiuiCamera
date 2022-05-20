.class public Lcom/android/camera/fragment/FragmentDocView;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentDocView.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$DocViewProtocol;


# static fields
.field public static final FRAGMENT_INFO:I = 0xff9

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mDocumentView:Lcom/android/camera/ui/DocumentView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/FragmentDocView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/FragmentDocView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xff9

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d0076

    return v0
.end method

.method public hideOrShowDocument(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/DocumentView;->hideOrShowPath(Z)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a0119

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/DocumentView;

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 2
    sget-object p1, Lcom/android/camera/fragment/FragmentDocView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Util.getCameraPreviewRect() "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " , preview Size "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragment;->mAppController:Lcom/android/camera/AppController;

    .line 3
    invoke-interface {v0}, Lcom/android/camera/AppController;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/common/ICameraMgr;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4
    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragment;->mAppController:Lcom/android/camera/AppController;

    invoke-interface {p2}, Lcom/android/camera/AppController;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ICameraMgr;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/camera/module/common/ICameraMgr;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object p2

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/DocumentView;->setDisplaySize(II)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    iget v1, p2, Lcom/android/camera/CameraSize;->width:I

    iget p2, p2, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v0, v1, p2}, Lcom/android/camera/ui/DocumentView;->setPreviewSize(II)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p1}, Lcom/android/camera/ui/DocumentView;->clear()V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa04

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa04

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public updateDocument(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;",
            "[F>;)V"
        }
    .end annotation

    const/16 v0, 0x8

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [F

    array-length v1, v1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/DocumentView;->updateDocument(Landroid/util/Pair;)V

    return-void

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p1}, Lcom/android/camera/ui/DocumentView;->clear()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
