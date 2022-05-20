.class public Lcom/android/camera/ui/V6PreviewPanel;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mAutoZoomView:Lcom/android/camera2/autozoom/AutoZoomView;

.field public mCropView:Lcom/android/camera/ui/V6EffectCropView;

.field public mFaceView:Lcom/android/camera/ui/FaceView;

.field public mFocusView:Lcom/android/camera/ui/FocusView;

.field public mObjectView:Lcom/android/camera/ui/ObjectView;

.field public mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

.field public mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

.field public mVideoReviewImage:Landroid/widget/ImageView;

.field public mVideoReviewPlay:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onCameraOpen()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0456

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xa7

    .line 3
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$PlayVideoProtocol;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$PlayVideoProtocol;->playVideo()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a044d

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FaceView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    const v0, 0x7f0a02d6

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ObjectView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    const v0, 0x7f0a0406

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/trackfocus/TrackFocusView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    const v0, 0x7f0a0456

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    const v0, 0x7f0a044e

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FocusView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFocusView:Lcom/android/camera/ui/FocusView;

    const v0, 0x7f0a044f

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6PreviewFrame;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mPreviewFrame:Lcom/android/camera/ui/V6PreviewFrame;

    const v0, 0x7f0a044c

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/V6EffectCropView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mCropView:Lcom/android/camera/ui/V6EffectCropView;

    const v0, 0x7f0a0457

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const v0, 0x7f0a007c

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6RelativeLayout;->findChildrenById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera2/autozoom/AutoZoomView;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mAutoZoomView:Lcom/android/camera2/autozoom/AutoZoomView;

    .line 11
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FaceView;->clear()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0}, Lcom/android/camera/ui/ObjectView;->clear()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mAutoZoomView:Lcom/android/camera2/autozoom/AutoZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera2/autozoom/AutoZoomView;->clear(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mFaceView:Lcom/android/camera/ui/FaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mObjectView:Lcom/android/camera/ui/ObjectView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mTrackFocusView:Lcom/android/camera/trackfocus/TrackFocusView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewPanel;->mVideoReviewPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraIntentManager;->isScanQRCodeIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;->setOrientation(IZ)V

    return-void
.end method
