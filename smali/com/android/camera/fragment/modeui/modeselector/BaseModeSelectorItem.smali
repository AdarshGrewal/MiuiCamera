.class public Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;
.super Ljava/lang/Object;
.source "BaseModeSelectorItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;
    }
.end annotation


# instance fields
.field public isCommon:Z

.field public mDataItem:Lcom/android/camera/data/data/ComponentDataItem;

.field public mPriority:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->access$000(Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;->mDataItem:Lcom/android/camera/data/data/ComponentDataItem;

    .line 3
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;->access$100(Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem$BaseBuilder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;->isCommon:Z

    return-void
.end method


# virtual methods
.method public getDataItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;->mDataItem:Lcom/android/camera/data/data/ComponentDataItem;

    return-object v0
.end method

.method public isCommon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;->isCommon:Z

    return v0
.end method

.method public setCommon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/modeselector/BaseModeSelectorItem;->isCommon:Z

    return-void
.end method
