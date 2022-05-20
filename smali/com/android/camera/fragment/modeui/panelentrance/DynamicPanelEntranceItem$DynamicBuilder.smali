.class public Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;
.super Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
.source "DynamicPanelEntranceItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DynamicBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder<",
        "Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field public mDelayHide:J

.field public mDuration:J

.field public mPriority:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;-><init>(I)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->mDelayHide:J

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->mDelayHide:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->mDuration:J

    return-wide v0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->mPriority:I

    return p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->build()Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem;-><init>(Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;)V

    return-object v0
.end method

.method public setDelayHide(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->mDelayHide:J

    return-object p0
.end method

.method public setDuration(J)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->mDuration:J

    return-object p0
.end method

.method public setPriority(I)Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/DynamicPanelEntranceItem$DynamicBuilder;->mPriority:I

    return-object p0
.end method
