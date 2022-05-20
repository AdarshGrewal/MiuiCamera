.class public Lcom/android/camera/ui/V6PreviewFrame;
.super Lcom/android/camera/ui/V6RelativeLayout;
.source "V6PreviewFrame.java"


# instance fields
.field public mCenterMark:Lcom/android/camera/ui/CenterMarkDrawer;

.field public mGradienter:Lcom/android/camera/ui/GradienterDrawer;

.field public mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getReferenceLine()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    return-object v0
.end method

.method public hidePreviewCenterMark()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mCenterMark:Lcom/android/camera/ui/CenterMarkDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mCenterMark:Lcom/android/camera/ui/CenterMarkDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hidePreviewGradienter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ReferenceLineDrawer;->setGradienterEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public hidePreviewReferenceLine()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/GradienterDrawer;->setReferenceLineEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onCameraOpen()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/ui/V6RelativeLayout;->onCameraOpen()V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0455

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ReferenceLineDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/ReferenceLineDrawer;->initialize(II)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ui/ReferenceLineDrawer;->setBorderVisible(ZZ)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ReferenceLineDrawer;->setLineColor(I)V

    const v0, 0x7f0a044b

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/CenterMarkDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mCenterMark:Lcom/android/camera/ui/CenterMarkDrawer;

    .line 7
    invoke-virtual {v0}, Lcom/android/camera/ui/CenterMarkDrawer;->init()V

    const v0, 0x7f0a0454

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/GradienterDrawer;

    iput-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public updateCenterMarkSwitched(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mCenterMark:Lcom/android/camera/ui/CenterMarkDrawer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateReferenceGradienterSwitched(ZZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    if-nez v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/camera/ui/ReferenceLineDrawer;->setGradienterEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/GradienterDrawer;->setReferenceLineEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    invoke-virtual {p1, v0, v3, p3}, Lcom/android/camera/ui/GradienterDrawer;->setConfigInfo(IIZ)V

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/android/camera/ui/V6PreviewFrame;->mGradienter:Lcom/android/camera/ui/GradienterDrawer;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public updateReferenceLineAccordSquare()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSquareModule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    .line 4
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 5
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 7
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/android/camera/ui/V6PreviewFrame;->mReferenceLine:Lcom/android/camera/ui/ReferenceLineDrawer;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method
