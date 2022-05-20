.class public Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentLiveReferenceLine.java"


# static fields
.field public static REFERENCELINE_TYPE:Ljava/lang/String; = "jiugongge"

.field public static final REFERENCE_LINE_GOLDEN_SECTION:Ljava/lang/String; = "golden_section"

.field public static final REFERENCE_LINE_JIUGONGGE:Ljava/lang/String; = "jiugongge"

.field public static final REFERENCE_LINE_LEFT_GOLDEN_SPIRAL:Ljava/lang/String; = "left_golden_spiral"

.field public static final REFERENCE_LINE_RIGHT_GOLDEN_SPIRAL:Ljava/lang/String; = "right_golden_spiral"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/data/data/extra/DataItemLive;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    return-void
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0

    const-string p1, "jiugongge"

    return-object p1
.end method

.method public getDisplayTitleString()I
    .locals 1

    const v0, 0x7f12076c

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 3
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/android/camera/data/data/extra/ComponentLiveReferenceLine;->reInit(II)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const-string/jumbo p1, "pref_camera_referenceline_type_key"

    return-object p1
.end method

.method public reInit(II)V
    .locals 18

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v9, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f08042a

    const v3, 0x7f08042a

    const v4, 0x7f12076e

    const v5, 0x7f12076e

    const-string v6, "jiugongge"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f080400

    const v12, 0x7f080400

    const v13, 0x7f12076d

    const v14, 0x7f12076d

    const-string v15, "golden_section"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f080406

    const v4, 0x7f080406

    const v5, 0x7f12076f

    const v6, 0x7f12076f

    const-string v7, "left_golden_spiral"

    const/4 v9, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    const v11, 0x7f08042e

    const v12, 0x7f08042e

    const v13, 0x7f120770

    const v14, 0x7f120770

    const-string/jumbo v15, "right_golden_spiral"

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIIILjava/lang/String;ZI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    return-void
.end method
