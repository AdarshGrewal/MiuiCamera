.class public Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;
.super Ljava/lang/Object;
.source "BasePanelEntranceItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;,
        Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;,
        Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
    }
.end annotation


# static fields
.field public static final INVALID:I = -0x1


# instance fields
.field public mBgUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

.field public mDesc:I

.field public mHideBySelf:Z

.field public mIsActivated:Z

.field public mKey:I

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mRes:I

.field public mSupportRotation:Z

.field public mSupportedCallback:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;",
            ">(",
            "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->access$000(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mSupportedCallback:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;

    .line 3
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->access$100(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 4
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->access$200(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mKey:I

    .line 5
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->access$300(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mRes:I

    .line 6
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->access$400(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mBgUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    .line 7
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->access$500(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mDesc:I

    .line 8
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->access$600(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mIsActivated:Z

    .line 9
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->access$700(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mSupportRotation:Z

    .line 10
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;->access$800(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mHideBySelf:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;

    .line 3
    iget v2, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mKey:I

    iget v3, p1, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mKey:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mIsActivated:Z

    iget-boolean p1, p1, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mIsActivated:Z

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getBgUpdater()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mBgUpdater:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BackgroundUpdater;

    return-object v0
.end method

.method public getDesc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mDesc:I

    return v0
.end method

.method public getKey()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mKey:I

    return v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getRes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mRes:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mKey:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isActivated()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mIsActivated:Z

    return v0
.end method

.method public isHideBySelf()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mHideBySelf:Z

    return v0
.end method

.method public isSupportRotation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mSupportRotation:Z

    return v0
.end method

.method public support()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mSupportedCallback:Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$SupportedCallback;->supported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasePanelEntranceItem{, mKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mKey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->mSupportRotation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
