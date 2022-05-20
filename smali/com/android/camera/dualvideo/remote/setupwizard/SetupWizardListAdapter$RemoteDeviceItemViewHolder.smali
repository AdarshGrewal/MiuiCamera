.class public Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SetupWizardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteDeviceItemViewHolder"
.end annotation


# instance fields
.field public final mDeviceIcon:Landroid/widget/ImageView;

.field public mDeviceId:I

.field public final mDeviceName:Landroid/widget/TextView;

.field public final mDeviceStatus:Landroid/widget/TextView;

.field public mIconHeight:I

.field public mIconWidth:I

.field public final mItemView:Landroid/view/View;

.field public final rotate:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/view/View;II)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mItemView:Landroid/view/View;

    const v0, 0x7f0a0339

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a033b

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceName:Landroid/widget/TextView;

    const v0, 0x7f0a033c

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceStatus:Landroid/widget/TextView;

    const/4 p1, -0x1

    .line 6
    iput p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceId:I

    .line 7
    iput p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mIconWidth:I

    .line 8
    iput p3, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mIconHeight:I

    .line 9
    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    .line 10
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 11
    iget-object p3, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p3, p2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 12
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 13
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p2, p1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, p2}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    return-void
.end method


# virtual methods
.method public setDeviceIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mIconWidth:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mIconHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public setDeviceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceId:I

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDeviceStatus(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceStatus:Landroid/widget/TextView;

    const v0, 0x7f1208b7

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void
.end method

.method public setDeviceStatusTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceStatus:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mItemView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v1, 0x3f19999a    # 0.6f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public startRotate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->rotate:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public stopRotate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->mDeviceIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method
