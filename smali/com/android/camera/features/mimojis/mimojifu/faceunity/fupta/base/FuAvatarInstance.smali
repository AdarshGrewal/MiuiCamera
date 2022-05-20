.class public Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;
.super Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;
.source "FuAvatarInstance.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/extinterface/FuAvatarInstanceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$EmoticonPackListener;,
        Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "FuAvatarInstance"


# instance fields
.field public ANIM:Ljava/lang/String;

.field public CAMERA:Ljava/lang/String;

.field public DECORATION:Ljava/lang/String;

.field public _cameraItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field public _decoration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field public _emotionItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public _firstFrameItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public _tempCameraItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;",
            ">;"
        }
    .end annotation
.end field

.field public _tempColors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;"
        }
    .end annotation
.end field

.field public _tempEmotionItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public _tempFirstFrameItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public animItem:[I

.field public fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

.field public rgba:[D

.field public tempBodyCut:[Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;-><init>()V

    const-string v0, "anim"

    .line 2
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->ANIM:Ljava/lang/String;

    const-string v0, "camera"

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->CAMERA:Ljava/lang/String;

    const-string v0, "decoration"

    .line 4
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->DECORATION:Ljava/lang/String;

    return-void
.end method

.method private AnimationPlay(ZI)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p1

    int-to-double v0, p2

    const-string/jumbo p2, "play_animation_once"

    invoke-static {p1, p2, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p1

    int-to-double v0, p2

    const-string/jumbo p2, "play_animation"

    invoke-static {p1, p2, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :goto_0
    return-void
.end method

.method public static Create(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getNextInstanceId()I

    move-result v1

    iput v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_instanceID:I

    .line 3
    iput-object p0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    .line 7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_decoration:Ljava/util/Map;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_emotionItem:Ljava/util/List;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_firstFrameItem:Ljava/util/List;

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_cameraItems:Ljava/util/Map;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempEmotionItem:Ljava/util/List;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempFirstFrameItem:Ljava/util/List;

    .line 13
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempCameraItems:Ljava/util/Map;

    .line 14
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->AR:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {p0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->isArMode:Z

    return-object v0
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)[Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->tempBodyCut:[Ljava/lang/Integer;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;[Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->tempBodyCut:[Ljava/lang/Integer;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;[Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getIntersection([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private getAnim()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->ANIM:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->ANIM:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    return-object v0

    .line 3
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;-><init>()V

    const-string v1, ""

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setBundle(Ljava/lang/String;)V

    return-object v0
.end method

.method private getBundlePath(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCurrent_position()[D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string v1, "current_position"

    invoke-static {v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemGetParamdv(ILjava/lang/String;)[D

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 3
    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private getDecorations()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_decoration:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->DECORATION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_decoration:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->DECORATION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getIntersection([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 6

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    array-length p1, p2

    new-array p1, p1, [Ljava/lang/Integer;

    .line 2
    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 3
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Ljava/util/HashSet;

    array-length v3, p1

    array-length v4, p2

    if-le v3, v4, :cond_2

    move-object v3, p1

    goto :goto_0

    :cond_2
    move-object v3, p2

    :goto_0
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    array-length v3, p1

    array-length v4, p2

    if-le v3, v4, :cond_3

    move-object p1, p2

    :cond_3
    array-length p2, p1

    move v3, v0

    :goto_1
    if-ge v3, p2, :cond_5

    aget-object v4, p1, v3

    .line 6
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 7
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    new-array p1, v0, [Ljava/lang/Integer;

    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Integer;

    return-object p1
.end method

.method private removeAnim()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->ANIM:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private removeDecoration()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_decoration:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->DECORATION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_decoration:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->DECORATION:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private saveAnim(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->ANIM:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private setBodyCut()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->tempBodyCut:[Ljava/lang/Integer;

    if-eqz v0, :cond_2

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body_visible_list:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->tempBodyCut:[Ljava/lang/Integer;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->tempBodyCut:[Ljava/lang/Integer;

    array-length v0, v0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->tempBodyCut:[Ljava/lang/Integer;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string v2, "body_visible_list"

    invoke-static {v0, v2, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public CreateEmotionItem(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;>;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->addEmoticonTask(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;)V

    return-void
.end method

.method public animationGetFrameCount(ID)I
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    const-string v2, "get_animation_frame_num"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "anim_id"

    .line 3
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/faceunity/wrapper/faceunity;->fuItemGetParam(ILjava/lang/String;)D

    move-result-wide v0

    double-to-int p1, v0

    int-to-double v0, p1

    mul-double/2addr v0, p2

    const-wide/high16 p1, 0x4039000000000000L    # 25.0

    div-double/2addr v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public animationGetTransitionProgress(I)F
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    const-string v2, "get_animation_progress"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "anim_id"

    .line 3
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/faceunity/wrapper/faceunity;->fuItemGetParam(ILjava/lang/String;)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public animationPause()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "pause_animation"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public animationPlay(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getAnim()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v0

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->AnimationPlay(ZI)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getDecorations()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    array-length v1, v0

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    .line 7
    aget-object v1, v0, v2

    .line 8
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->AnimationPlay(ZI)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public animationStart()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "start_animation"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public animationStop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "stop_animation"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public bindAll()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getBundleList()[Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->onlyBind()V

    return-void
.end method

.method public bindAllAndSetPinchFace()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->bindAll()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$7;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$7;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindCamera()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getSceneInstance(I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->EditEnter()I

    move-result v2

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setWhiteColor()V

    .line 4
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->camera:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v3

    new-array v5, v4, [I

    aput v3, v5, v1

    .line 6
    sget-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unbindCamera: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v3

    invoke-static {v3, v5}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_cameraItems:Ljava/util/Map;

    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->CAMERA:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_cameraItems:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->CAMERA:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    .line 10
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v3

    new-array v4, v4, [I

    aput v3, v4, v1

    .line 11
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindCamera: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    invoke-static {v1, v4}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 13
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->setInstance(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string/jumbo v2, "target_position"

    invoke-static {v0, v2, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-wide/16 v1, 0x0

    const-string/jumbo v3, "reset_all"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public closeSetBackGround()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string v1, "enable_background_color"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getSceneInstance(I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->background:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v0, v2, v1

    .line 5
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    invoke-static {v0, v2}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    :cond_1
    return-void
.end method

.method public destroyEmotionItem()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->caiDanAnimate(Z)V

    .line 2
    sget v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_WIDTH:I

    sget v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->RENDER_HEIGHT:I

    invoke-static {v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-string v2, "enable_face_processor"

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2, v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->unBindCamera()V

    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_emotionItem:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_emotionItem:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 7
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 8
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    if-eqz v4, :cond_0

    .line 11
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->DestroyItem(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    .line 12
    :goto_2
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_firstFrameItem:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 13
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_firstFrameItem:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 14
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 15
    :cond_3
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 16
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    if-eqz v4, :cond_3

    .line 18
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->DestroyItem(I)V

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_emotionItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 20
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_firstFrameItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 21
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    return-void
.end method

.method public enterAR()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setArMode(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$5;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$5;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitAR()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setArMode(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$6;

    invoke-direct {v1, p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$6;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public generateEmoticonPack(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;IILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$EmoticonPackListener;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_emotionItem:Ljava/util/List;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-wide/16 v2, 0x0

    const-string v4, "enable_face_processor"

    invoke-static {v1, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 3
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v4, "reset_face_processor_filter"

    invoke-static {v1, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 4
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_emotionItem:Ljava/util/List;

    move/from16 v4, p3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 5
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->ANIM:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v4

    .line 6
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 7
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    .line 8
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 10
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    if-eqz v9, :cond_1

    .line 11
    invoke-virtual {v9}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v9

    aput v9, v5, v8

    goto :goto_1

    .line 12
    :cond_1
    aput v7, v5, v8

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 13
    :cond_2
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindItems:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    invoke-static {v1, v5}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    const/16 v1, 0x258

    .line 15
    invoke-static {v1, v1}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    move/from16 v1, p4

    int-to-double v8, v1

    .line 16
    invoke-virtual {v0, v4, v8, v9}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->animationGetFrameCount(ID)I

    move-result v1

    .line 17
    sget-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "FrameCount:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 18
    invoke-virtual {v0, v6, v8, v9}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setAnimState(ID)V

    const/4 v6, 0x1

    .line 19
    invoke-virtual {v0, v6, v8, v9}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setAnimState(ID)V

    .line 20
    invoke-direct {v0, v6, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->AnimationPlay(ZI)V

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->expression2dPlay()V

    div-double/2addr v2, v8

    const/16 v4, 0x10

    new-array v4, v4, [F

    .line 22
    invoke-static {v4, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    .line 23
    invoke-static {v4, v7, v10, v6, v10}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->expression2dReset()V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->dynamicBone_Reset()V

    :goto_2
    if-ge v7, v1, :cond_3

    int-to-double v10, v7

    mul-double/2addr v10, v2

    .line 26
    invoke-virtual {v0, v10, v11}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setDeltaTime(D)V

    .line 27
    iget-object v4, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-object v11, v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    const/4 v12, 0x1

    const/16 v13, 0x12c

    const/16 v14, 0x12c

    iget-object v4, v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    move v15, v7

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundles(Lcom/faceunity/wrapper/faceunity$AvatarInfo;IIII[I)I

    move-result v4

    add-int/lit8 v7, v7, 0x1

    int-to-float v6, v7

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v6, v10

    int-to-float v10, v1

    div-float/2addr v6, v10

    move-object/from16 v10, p5

    .line 28
    invoke-interface {v10, v4, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$EmoticonPackListener;->generateGif(IF)V

    goto :goto_2

    :cond_3
    move-object/from16 v10, p5

    const/4 v1, 0x2

    .line 29
    invoke-virtual {v0, v1, v8, v9}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setAnimState(ID)V

    .line 30
    iget-object v1, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    invoke-static {v1, v5}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 31
    invoke-interface/range {p5 .. p5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$EmoticonPackListener;->generateGifEnd()V

    :cond_4
    :goto_3
    return-void
.end method

.method public getAnimationProgress()F
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->EditEnter()I

    move-result v0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getAnim()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v1

    .line 4
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->animationGetTransitionProgress(I)F

    move-result v2

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->setInstance(I)V

    .line 6
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "animId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " progress:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public getColors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getColors()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getEmotionIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_firstFrameItem:Ljava/util/List;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->enterScene(I)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->caiDanAnimate(Z)V

    const/16 v0, 0x1f4

    .line 5
    invoke-static {v0, v0}, Lcom/faceunity/wrapper/faceunity;->fuSetOutputResolution(II)V

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-wide/16 v2, 0x0

    const-string v4, "enable_face_processor"

    invoke-static {v1, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 7
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget v1, v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_controller:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v4, "reset_face_processor_filter"

    invoke-static {v1, v4, v2, v3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 8
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->bindCamera()V

    const/16 v1, 0x10

    new-array v1, v1, [F

    .line 9
    invoke-static {v1, p3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    invoke-static {v1, p3, v3, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 11
    invoke-virtual {p0, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->enable_Dynamicbone(Z)V

    move v2, p3

    .line 12
    :goto_0
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_firstFrameItem:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 13
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_firstFrameItem:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 14
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 15
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, p3

    .line 16
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 17
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 18
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    if-eqz v7, :cond_1

    .line 19
    invoke-virtual {v7}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v7

    aput v7, v4, v6

    goto :goto_2

    .line 20
    :cond_1
    aput p3, v4, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 21
    :cond_2
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindItems:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v3

    invoke-static {v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 23
    aget v3, v4, p3

    invoke-direct {p0, p2, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->AnimationPlay(ZI)V

    .line 24
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-object v5, v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->avatarInfo:Lcom/faceunity/wrapper/faceunity$AvatarInfo;

    const/4 v6, 0x1

    const/16 v7, 0x1f4

    const/16 v8, 0x1f4

    const/4 v9, 0x0

    iget-object v10, v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->mItemsArray:[I

    invoke-static/range {v5 .. v10}, Lcom/faceunity/wrapper/faceunity;->fuRenderBundles(Lcom/faceunity/wrapper/faceunity$AvatarInfo;IIII[I)I

    move-result v3

    .line 25
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->animationStop()V

    .line 26
    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/gles/core/GlUtil;->IDENTITY_MATRIX:[F

    invoke-static {v3, v5, v1, v0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->glReadBitmap(I[F[FII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v3

    invoke-static {v3, v4}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 28
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unbindItems:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 29
    :cond_3
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/BitmapUtil;->releaseGL()V

    .line 30
    invoke-virtual {p0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->enable_Dynamicbone(Z)V

    :cond_4
    :goto_3
    return-object p1
.end method

.method public getFuItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object p1

    return-object p1
.end method

.method public glExecution()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setBodyCut()V

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->values()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 3
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempColors:Ljava/util/Map;

    if-nez v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    if-nez v4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$8;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$entity$LabelCollection$ColorType:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 6
    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setItemColor(Ljava/lang/String;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    goto :goto_1

    .line 7
    :cond_2
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->liplash:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v3

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setMakeColor(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->glAvatarExecution()V

    return-void
.end method

.method public preEmoticonTask(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            ">;>;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;",
            "Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempFirstFrameItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempCameraItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempEmotionItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ani_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->getSecondToLastName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v5, v0

    .line 8
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 9
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 10
    new-instance v7, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    invoke-direct {v7}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;-><init>()V

    .line 11
    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setBundle(Ljava/lang/String;)V

    .line 12
    iget-object v8, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v8}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 13
    invoke-virtual {v7, v8}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setItem(I)V

    .line 14
    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->getLastName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "chushi_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v8, ""

    if-eqz v6, :cond_0

    .line 15
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 16
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempFirstFrameItem:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v6

    const-string v9, ".bundle"

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/FileUtil;->getLastName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 19
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->ANIM:Ljava/lang/String;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 20
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 21
    :cond_2
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempEmotionItem:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 22
    :cond_3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    .line 23
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    invoke-direct {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;-><init>()V

    .line 24
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setBundle(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setItem(I)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempCameraItems:Ljava/util/Map;

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->CAMERA:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_4

    .line 27
    invoke-interface {p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$CreateEmoticonListener;->createEmotion()V

    .line 28
    :cond_4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->glAvatarExecution()V

    return-void
.end method

.method public preTask()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempColors:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempColors:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempColors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "preTask: fuAvatar is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getColors()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempColors:Ljava/util/Map;

    .line 7
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->head:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->head:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getBundle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 12
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    .line 13
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {v3, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setBundle(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setItem(I)V

    .line 17
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->tempBodyCut:[Ljava/lang/Integer;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBody_visible_parts()[Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getIntersection([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->tempBodyCut:[Ljava/lang/Integer;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->needResetHead:Z

    .line 20
    :goto_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->values()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    aget-object v3, v0, v2

    .line 21
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v4, :cond_6

    invoke-virtual {v4, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->head:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto/16 :goto_2

    .line 23
    :cond_4
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v4, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v4

    .line 24
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v6

    .line 26
    sget-object v7, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->face:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-virtual {v3, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->eye:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    .line 27
    invoke-virtual {v3, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->ear:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    .line 28
    invoke-virtual {v3, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->mouth:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    .line 29
    invoke-virtual {v3, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->nose:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    .line 30
    invoke-virtual {v3, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    sget-object v7, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->brow:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    .line 31
    invoke-virtual {v3, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 32
    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getBundle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    .line 33
    :cond_5
    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v7}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 34
    iget-object v8, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v8, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->bindList:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v6, v5}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setBundle(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v6, v7}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->setItem(I)V

    .line 38
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->_bundleItems:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->tempBodyCut:[Ljava/lang/Integer;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBody_visible_parts()[Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getIntersection([Ljava/lang/Integer;[Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->tempBodyCut:[Ljava/lang/Integer;

    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    return-void
.end method

.method public preTask(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 40
    :cond_0
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {p3, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getBundlePath(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)Ljava/lang/String;

    move-result-object p3

    .line 41
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getBundlePath(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)Ljava/lang/String;

    move-result-object p2

    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 43
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->CreateItem(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, -0x1

    .line 44
    :goto_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->bindEvents:Ljava/util/List;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$4;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$4;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public releaseGLEnd()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_decoration:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getDecorations()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v0

    .line 3
    array-length v2, v0

    new-array v3, v2, [I

    const/4 v4, 0x0

    move v5, v4

    .line 4
    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 5
    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v6

    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    invoke-static {v0, v3}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    :goto_1
    if-ge v4, v2, :cond_1

    .line 7
    aget v0, v3, v4

    .line 8
    invoke-static {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->DestroyItem(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_decoration:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 10
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_decoration:Ljava/util/Map;

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->clear()V

    .line 13
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    :cond_3
    return-void
.end method

.method public rotate(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "target_angle"

    invoke-static {v0, v1, p1, p2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public rotateDelta(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$2;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;D)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scaleDelta(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "scale_delta"

    invoke-static {v0, v1, p1, p2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public scaleDelta(FDD)Z
    .locals 9

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->getCurrent_position()[D

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    aget-wide v2, v0, v1

    cmpl-double v2, v2, p2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    cmpl-float v2, p1, v3

    if-gtz v2, :cond_1

    :cond_0
    aget-wide v4, v0, v1

    cmpg-double v2, v4, p4

    if-gtz v2, :cond_2

    cmpg-float v2, p1, v3

    if-gez v2, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    cmpl-float v2, p1, v3

    const-string/jumbo v4, "scale_delta"

    if-lez v2, :cond_3

    .line 4
    aget-wide v5, v0, v1

    float-to-double v7, p1

    add-double/2addr v5, v7

    cmpl-double v2, v5, p2

    if-lez v2, :cond_3

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p1

    aget-wide p4, v0, v1

    sub-double/2addr p2, p4

    invoke-static {p1, v4, p2, p3}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    :cond_3
    cmpg-float p2, p1, v3

    if-gez p2, :cond_4

    .line 6
    aget-wide p2, v0, v1

    float-to-double v2, p1

    add-double/2addr p2, v2

    cmpg-double p2, p2, p4

    if-gez p2, :cond_4

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p1

    aget-wide p2, v0, v1

    sub-double/2addr p4, p2

    invoke-static {p1, v4, p4, p5}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    .line 8
    :cond_4
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p2

    float-to-double p3, p1

    invoke-static {p2, v4, p3, p4}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setAnimState(ID)V
    .locals 2

    const/4 p2, 0x1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-string p3, "enable_set_time"

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p1

    const-string/jumbo p2, "reset_animation"

    invoke-static {p1, p2, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p1

    const-wide/16 v0, 0x0

    invoke-static {p1, p3, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p1

    const-string/jumbo p2, "stop_animation"

    invoke-static {p1, p2, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p1

    invoke-static {p1, p3, v0, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    :goto_0
    return-void
.end method

.method public setAnimation(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setArMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->isArMode:Z

    return-void
.end method

.method public setAvatar(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->tempBodyCut:[Ljava/lang/Integer;

    .line 3
    iget-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->isArMode:Z

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->enterAR()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->addTask()V

    return-void
.end method

.method public setBackgroundColor([D)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->rgba:[D

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getSceneInstance(I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->background:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v0, v2, v1

    .line 5
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unBindBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    invoke-static {v0, v2}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    iget-object v0, v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->_renderMode:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;->Edit:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController$RenderMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "enable_background_color"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "set_background_color"

    invoke-static {v0, v1, p1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    return-void
.end method

.method public setColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->setColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    new-instance v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$1;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDeltaTime(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string v1, "animation_time_current"

    invoke-static {v0, v1, p1, p2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public setItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v1, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v1

    .line 2
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->setItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)Z

    .line 3
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->addTask(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0, p2, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->addTask(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v1, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->setItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)Z

    .line 7
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->addTask(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;Ljava/lang/String;)V

    return-void
.end method

.method public setItemColor(Ljava/lang/String;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 1
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getR()D

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    .line 2
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getG()D

    move-result-wide v1

    const/4 v3, 0x1

    aput-wide v1, v0, v3

    .line 3
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getB()D

    move-result-wide v1

    const/4 p2, 0x2

    aput-wide v1, v0, p2

    .line 4
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rgb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p2

    invoke-static {p2, p1, v0}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    return-void
.end method

.method public setMakeColor(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "name"

    const-string v2, "global"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    const-string v2, "face_detail"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "param"

    const-string v2, "blend_color"

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "UUID"

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x3

    new-array p1, p1, [D

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getR()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v6

    aput-wide v2, p1, v1

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getG()D

    move-result-wide v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    aput-wide v2, p1, v1

    const/4 v1, 0x2

    .line 9
    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->getB()D

    move-result-wide v2

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    aput-wide v2, p1, v1

    .line 10
    sget-object p2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rgb:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result p2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    return-void
.end method

.method public setScenesAnimation(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->addTask(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarAnimation;)V

    return-void
.end method

.method public setTargetPosition(DDDDI)V
    .locals 14

    move-object v11, p0

    .line 1
    iget-object v12, v11, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    new-instance v13, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;

    move-object v0, v13

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$3;-><init>(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;DDDDI)V

    invoke-virtual {v12, v13}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/BaseFuController;->queueEventNoLock(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWhiteColor()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getSceneInstance(I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->background:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput v0, v2, v1

    .line 4
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unBindBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    invoke-static {v0, v2}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "enable_background_color"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    sget-object v1, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->gifBackgroundColor:[D

    const-string/jumbo v2, "set_background_color"

    invoke-static {v0, v2, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    return-void
.end method

.method public translateDelta(D)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-string/jumbo v1, "translate_delta"

    invoke-static {v0, v1, p1, p2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    return-void
.end method

.method public unBindAll()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getBundleList()[Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->unBindList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->onlyUnBind(Z)V

    return-void
.end method

.method public unBindCamera()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getSceneInstance(I)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuSceneInstance;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->EditEnter()I

    move-result v2

    .line 3
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->rgba:[D

    invoke-virtual {p0, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setBackgroundColor([D)V

    .line 4
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_cameraItems:Ljava/util/Map;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->CAMERA:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_cameraItems:Ljava/util/Map;

    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->CAMERA:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    .line 6
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v3

    new-array v5, v4, [I

    aput v3, v5, v1

    .line 7
    sget-object v6, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unBindCamera: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v6}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v6

    invoke-static {v6, v5}, Lcom/faceunity/wrapper/faceunity;->fuUnBindItems(I[I)I

    .line 9
    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->DestroyItem(I)V

    .line 10
    :cond_1
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;->camera:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$SceneType;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v3

    new-array v4, v4, [I

    aput v3, v4, v1

    .line 12
    sget-object v1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindCamera: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/utils/LogUtil;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v1

    invoke-static {v1, v4}, Lcom/faceunity/wrapper/faceunity;->fuBindItems(I[I)I

    .line 14
    :cond_2
    invoke-virtual {v0, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->setInstance(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    const-string/jumbo v2, "target_position"

    invoke-static {v0, v2, v1}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;[D)I

    .line 16
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->fuController:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuController;->getController()I

    move-result v0

    const-wide/16 v1, 0x0

    const-string/jumbo v3, "reset_all"

    invoke-static {v0, v3, v1, v2}, Lcom/faceunity/wrapper/faceunity;->fuItemSetParam(ILjava/lang/String;D)I

    .line 17
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_cameraItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public updateColor()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->values()[Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 2
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-nez v4, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance$8;->$SwitchMap$com$android$camera$features$mimojis$mimojifu$faceunity$fupta$base$entity$LabelCollection$ColorType:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 5
    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setItemColor(Ljava/lang/String;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    goto :goto_1

    .line 6
    :cond_2
    sget-object v3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->liplash:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-static {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getEnumName(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuBaseInstance;->getFuItemTypeBean(Ljava/lang/String;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/FuItemTypeBean;->getItem()I

    move-result v3

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->setMakeColor(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public updateEmotion()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_cameraItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_emotionItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_firstFrameItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_cameraItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->CAMERA:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempCameraItems:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_emotionItem:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempEmotionItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_firstFrameItem:Ljava/util/List;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempFirstFrameItem:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempCameraItems:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempEmotionItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatarInstance;->_tempFirstFrameItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
