.class public final Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;
.super Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;
.source "DynamicPanelEntranceItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;",
        "Ljava/lang/Comparable<",
        "Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOC_MODE:I = 0x20

.field public static final ID_CARD:I = 0x21

.field public static final INFINITE:J = -0x1L

.field public static final QR_ENTRY:I = 0x22


# instance fields
.field public mDelayHide:J

.field public mDuration:J

.field public mPriority:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;-><init>(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)V

    .line 2
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->access$000(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mDelayHide:J

    .line 3
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->access$100(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mDuration:J

    .line 4
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->access$200(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mPriority:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;)I
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->getKey()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->getPriority()I

    move-result p1

    if-ge v1, p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->compareTo(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 3
    :cond_2
    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    .line 4
    iget v2, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mPriority:I

    iget p1, p1, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mPriority:I

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getDelayHide()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mDelayHide:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mDuration:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mPriority:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;->mPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
