.class public Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
.super Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;
.source "CustomViewEntranceItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder<",
        "Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field public mCustomView:I

.field public mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;-><init>(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mCustomView:I

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->build()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;-><init>(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)V

    return-object v0
.end method

.method public setCustomView(I)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mCustomView:I

    return-object p0
.end method

.method public setUpdateListener(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    return-object p0
.end method
