.class public final Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;
.super Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;
.source "NormalPanelEntranceItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$VisibleCondition;,
        Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;,
        Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Gravity;
    }
.end annotation


# static fields
.field public static final AI_WATERMARK:I = 0x4

.field public static final BOKEH:I = 0x13

.field public static final CENTER:I = 0x0

.field public static final FASTMOTION_PRO:I = 0x12

.field public static final FAST_MOTION:I = 0x11

.field public static final LEFT:I = 0x1

.field public static final LEFT_EXTRA:I = 0x2

.field public static final LIGHTING:I = 0x3

.field public static final MAX_COUNT:I = 0x5

.field public static final MIMOJI_AVATAR:I = 0x8

.field public static final MIMOJI_BG:I = 0x9

.field public static final MIMOJI_CHANGE_TIMBRE:I = 0x10

.field public static final RIGHT:I = 0x3

.field public static final RIGHT_EXTRA:I = 0x4

.field public static final SHINE:I = 0x1

.field public static final SPEED:I = 0x7

.field public static final SUPER_MOON:I = 0x6

.field public static final SWITCH_CAMERA:I = 0x2

.field public static final VIDEO_BEAUTY:I = 0x5


# instance fields
.field public mCondition:Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$VisibleCondition;

.field public mGravity:I


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;-><init>(Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem$BaseBuilder;)V

    .line 2
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->access$000(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;->mGravity:I

    .line 3
    invoke-static {p1}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;->access$100(Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$Builder;)Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$VisibleCondition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;->mCondition:Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$VisibleCondition;

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

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

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
    check-cast p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;

    .line 4
    iget v2, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;->mGravity:I

    iget p1, p1, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;->mGravity:I

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

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;->mGravity:I

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

    iget v1, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;->mGravity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;->mCondition:Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$VisibleCondition;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem$VisibleCondition;->checkVisible()Z

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

    const-string v1, "NormalPanelEntranceItem{mGravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/fragment/modeui/panelentrance/NormalPanelEntranceItem;->mGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-super {p0}, Lcom/android/camera/fragment/modeui/panelentrance/BasePanelEntranceItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
