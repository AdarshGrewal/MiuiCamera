.class public Lcom/android/camera/fragment/FragmentBottomPopupTips$5;
.super Ljava/lang/Object;
.source "FragmentBottomPopupTips.java"

# interfaces
.implements Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentBottomPopupTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentBottomPopupTips$5;->this$0:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateBg()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->popupSolidPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0808ef

    goto :goto_0

    :cond_0
    const v0, 0x7f0800dc

    :goto_0
    return v0
.end method

.method public updateBgResourceColor()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->popupSolidPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f060370

    goto :goto_0

    :cond_0
    const v0, 0x7f060372

    :goto_0
    return v0
.end method
