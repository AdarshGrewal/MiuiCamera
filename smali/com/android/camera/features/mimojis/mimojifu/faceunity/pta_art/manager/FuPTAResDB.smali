.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;
.super Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BasePTAResDB;
.source "FuPTAResDB.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "FuPTAResDB"

.field public static final gender_boy:I = 0x0

.field public static final gender_girl:I = 0x1

.field public static final gender_mid:I = 0x2

.field public static instance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;


# instance fields
.field public _animation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public _bg_dongxiao:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public _bundles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;>;"
        }
    .end annotation
.end field

.field public _colors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;>;"
        }
    .end annotation
.end field

.field public animation:Ljava/lang/String;

.field public bg_dongxiao:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BasePTAResDB;-><init>()V

    const-string v0, "animation"

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->animation:Ljava/lang/String;

    const-string v0, "bg_dongxiao"

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->bg_dongxiao:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_bundles:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_colors:Ljava/util/Map;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_animation:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_bg_dongxiao:Ljava/util/Map;

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->initMaterialConfig()V

    return-void
.end method

.method private createItem(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    return-object v0
.end method

.method private fillServerData(Ljava/util/Map;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;",
            "I",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;->getGender()I

    move-result p2

    invoke-virtual {v0, p4, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getItemsForLabel(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getLabel()[Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    array-length v2, v1

    if-lez v2, :cond_1

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 7
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p3, :cond_2

    .line 8
    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method public static getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->instance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->instance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    invoke-direct {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;-><init>()V

    sput-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->instance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->instance:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    return-object v0
.end method


# virtual methods
.method public getAnimations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_animation:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->animation:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getBgList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_bg_dongxiao:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->bg_dongxiao:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getColorForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_colors:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getColorForUIIndex(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    .line 3
    invoke-virtual {p2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v3, v2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setSelect(Z)V

    move v2, v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v3, v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setSelect(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public getFuColorsForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getColorForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->TAG:Ljava/lang/String;

    const-string p2, "getFuItemsForUI: Out of bounds"

    invoke-static {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    return-object p1
.end method

.method public getFuItemsColorForCreate(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->values()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 2
    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->skin_color:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->hat_color:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x2

    .line 4
    invoke-virtual {p0, v4, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getFuColorsForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move-result-object v5

    .line 5
    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p0, v4, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getFuColorsForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move-result-object v5

    .line 7
    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getFuItemsForCreate(Ljava/util/Map;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    const-string/jumbo v1, "xiaomi_male.bundle"

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->head:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    const-string v1, "makeup/xiaomi_liplash.bundle"

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->liplash:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;->getFace_label()I

    move-result v0

    .line 8
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->face:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->fillServerData(Ljava/util/Map;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    .line 9
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->face:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    const-string v1, "face/D001.bundle"

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    .line 12
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->face:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;->getEye_label()I

    move-result v0

    .line 14
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->eye:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->fillServerData(Ljava/util/Map;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    .line 15
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;->getMouth_label()I

    move-result v0

    .line 16
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->mouth:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->fillServerData(Ljava/util/Map;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    .line 17
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;->getNose_label()I

    move-result v0

    .line 18
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->nose:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->fillServerData(Ljava/util/Map;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    .line 19
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;->getBrow_label()I

    move-result v0

    .line 20
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->brow:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->fillServerData(Ljava/util/Map;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    .line 21
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;->getHair_label()I

    move-result v0

    .line 22
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->hair:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->fillServerData(Ljava/util/Map;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    .line 23
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->hair:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 24
    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    if-ltz v0, :cond_2

    .line 25
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;->getGender()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "hair/female/C001.bundle"

    .line 26
    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "hair/male/B001.bundle"

    .line 27
    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 28
    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    .line 29
    :goto_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->hair:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_3
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;->getGlasses_label()I

    move-result v0

    .line 31
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->glasses:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->fillServerData(Ljava/util/Map;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/ServiceInfoBean;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    return-void
.end method

.method public getFuItemsForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;II)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getItemsForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lt p3, p2, :cond_0

    .line 3
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->TAG:Ljava/lang/String;

    const-string p2, "getFuItemsForUI: Out of bounds"

    invoke-static {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logE(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    return-object p1
.end method

.method public getFuItemsForUISize(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getItemsForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;I)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method public getItemForConfigIndex(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)I
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getItemsForConfig(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;I)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    move v0, p2

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p2
.end method

.method public getItemForUIIndex(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ")I"
        }
    .end annotation

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 3
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundlePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundlePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v3, v2}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setSelect(Z)V

    move v2, v1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v3, v0}, Lcom/android/camera/features/mimojis/commen/widget/autoselectview/SelectItemBean;->setSelect(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_2
    const/4 p1, -0x1

    return p1
.end method

.method public getItemsForConfig(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_bundles:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getItemsForLabel(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_bundles:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getGender_match()I

    move-result v2

    if-eq v2, p2, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getGender_match()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 5
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getItemsForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;",
            "I)",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setGender(I)V

    const-string v2, ""

    .line 4
    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBundle(Ljava/lang/String;)V

    .line 5
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB$1;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$entity$LabelCollection$ItemType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_bundles:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 8
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_bundles:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public initMaterialConfig()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->getInstance(Landroid/content/Context;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;

    move-result-object v0

    const-string v1, "config.json"

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->readLocalJsonFile(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->values()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 5
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_bundles:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->readJsonType(Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_bundles:Ljava/util/Map;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v8}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->readJsonType(Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_animation:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->animation:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->readJsonAnimation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_bg_dongxiao:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->bg_dongxiao:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->readJsonType(Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "others/color.json"

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->readJsonFile(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->values()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 11
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_colors:Ljava/util/Map;

    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/util/JsonUtils;->readJsonColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public recycleBitmap()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_bundles:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->values()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->values()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object v2

    aget-object v2, v2, v1

    .line 4
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->_bundles:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :catch_0
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    if-eqz v3, :cond_1

    .line 6
    :try_start_0
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v4, 0x0

    .line 8
    invoke-virtual {v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
