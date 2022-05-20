.class public final Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;
.super Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;
.source "CustomViewEntranceItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;,
        Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;
    }
.end annotation


# static fields
.field public static final BEAUTY_MODE:I = 0x2

.field public static final BOKEH_LENS:I = 0x1


# instance fields
.field public mCustomView:I

.field public mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;-><init>(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)V

    .line 2
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->access$000(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->mCustomView:I

    .line 3
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;->access$100(Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$Builder;)Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    return-void
.end method


# virtual methods
.method public getCustomView()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->mCustomView:I

    return v0
.end method

.method public getUpdateListener()Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem;->mUpdateListener:Lcom/android/camera/fragment/modeui/panelentrance/CustomViewEntranceItem$UpdateListener;

    return-object v0
.end method
