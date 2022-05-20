.class public Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SetupWizardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$ItemDecoration;,
        Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mIconHeight:I

.field public final mIconWidth:I

.field public final mOnClickListener:Landroid/view/View$OnClickListener;

.field public final mRemoteDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/dualvideo/remote/RemoteDevice;",
            ">;"
        }
    .end annotation
.end field

.field public final mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;

    invoke-static {v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->createTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;IILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getActivity()Lcom/android/camera/ActivityBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getRemoteDeviceList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mRemoteDeviceList:Ljava/util/List;

    .line 5
    iput-object p4, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 6
    iput p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mIconWidth:I

    .line 7
    iput p3, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mIconHeight:I

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->onBindViewHolder(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;I)V
    .locals 9

    .line 2
    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBindViewHolder: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mRemoteDeviceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;

    const/4 v0, -0x1

    const v1, 0x7f0803a4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f060332

    if-nez p2, :cond_0

    .line 4
    sget-object p2, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onBindViewHolder: null"

    invoke-static {p2, v5}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v3}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setEnabled(Z)V

    const-string p2, "UNKNOWN"

    .line 6
    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceName(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceId(I)V

    .line 8
    invoke-virtual {p1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatusTextColor(I)V

    .line 10
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->stopRotate()V

    return-void

    .line 12
    :cond_0
    iget-object v5, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mSetupWizard:Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;

    invoke-virtual {v5}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizard;->getSelectedRemoteDeviceId()I

    move-result v5

    .line 13
    sget-object v6, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onBindViewHolder: selected id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v5, v0, :cond_7

    .line 14
    iget v0, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->id:I

    if-ne v0, v5, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setEnabled(Z)V

    .line 16
    iget-object v5, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceName(Ljava/lang/String;)V

    .line 17
    iget v5, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->id:I

    invoke-virtual {p1, v5}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceId(I)V

    .line 18
    sget-object v5, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onBindViewHolder: selected device: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    .line 19
    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onBindViewHolder: selected state & selected item"

    invoke-static {v0, v5}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget p2, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->connectivity:I

    if-eq p2, v3, :cond_5

    const/4 v0, 0x7

    const v3, 0x7f0803a0

    const v5, 0x7f060331

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    const/4 v0, 0x4

    if-eq p2, v0, :cond_3

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    .line 21
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatusTextColor(I)V

    .line 22
    invoke-virtual {p1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    .line 23
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    .line 24
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->stopRotate()V

    goto/16 :goto_1

    .line 25
    :cond_2
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1205b3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    .line 26
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatusTextColor(I)V

    .line 27
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    .line 28
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->stopRotate()V

    goto/16 :goto_1

    .line 29
    :cond_3
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1205b2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatusTextColor(I)V

    .line 31
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->stopRotate()V

    goto :goto_1

    .line 33
    :cond_4
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1205ae

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v5}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatusTextColor(I)V

    .line 35
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    .line 36
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->stopRotate()V

    goto :goto_1

    .line 37
    :cond_5
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1205af

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    .line 38
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatusTextColor(I)V

    .line 39
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f0803a1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    .line 40
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->startRotate()V

    goto :goto_1

    .line 41
    :cond_6
    sget-object p2, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onBindViewHolder: selected state & unselected item"

    invoke-static {p2, v0}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    .line 43
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatusTextColor(I)V

    .line 44
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->stopRotate()V

    :goto_1
    return-void

    .line 46
    :cond_7
    sget-object v0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onBindViewHolder: unselected state"

    invoke-static {v0, v5}, Lcom/xiaomi/camera/rcs/util/RCSDebug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1, v3}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setEnabled(Z)V

    .line 48
    iget-object v0, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceName(Ljava/lang/String;)V

    .line 49
    iget p2, p2, Lcom/android/camera/dualvideo/remote/RemoteDevice;->id:I

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceId(I)V

    .line 50
    invoke-virtual {p1, v2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatus(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v4}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceStatusTextColor(I)V

    .line 52
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->setDeviceIcon(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;->stopRotate()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;
    .locals 2

    .line 2
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0170

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    iget-object p2, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;)V

    .line 5
    new-instance p2, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;

    iget v0, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mIconWidth:I

    iget v1, p0, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter;->mIconHeight:I

    invoke-direct {p2, p1, v0, v1}, Lcom/android/camera/dualvideo/remote/setupwizard/SetupWizardListAdapter$RemoteDeviceItemViewHolder;-><init>(Landroid/view/View;II)V

    return-object p2
.end method
