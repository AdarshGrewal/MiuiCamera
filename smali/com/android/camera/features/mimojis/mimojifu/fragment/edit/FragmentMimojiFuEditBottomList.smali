.class public Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentMimojiFuEditBottomList.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/BaseView;
.implements Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEditBottomList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/fragment/BaseFragment;",
        "Lcom/android/camera/features/mimojis/mvp/base/BaseView<",
        "Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEditBottomList;",
        ">;",
        "Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEditBottomList;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

.field public fuPTAResDB:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

.field public mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;",
            ">;"
        }
    .end annotation
.end field

.field public mFromTag:I

.field public volatile mIsLoadFinish:Z

.field public volatile mIsNeedRefresh:Z

.field public mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

.field public mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

.field public mMimojiEditBottomRecylerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

.field public mOnMimojiEditListClickListener:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;

.field public mPresenterMimojiEditBottomList:Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEditBottomList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/16 v0, 0xcb

    .line 2
    iput v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mFromTag:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mDataList:Ljava/util/List;

    return-void
.end method

.method private initItemData()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->fuPTAResDB:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    .line 3
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->TAG:Ljava/lang/String;

    const-string v1, "initItemData: fuAvatar is null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mDataList:Ljava/util/List;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getTypes()[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 7
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getTypes()[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;->getItemType()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object v2

    .line 8
    invoke-static {v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getColorType(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v3, :cond_1

    .line 9
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->fuPTAResDB:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    invoke-virtual {v4, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getColorForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 10
    iget-object v6, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->fuPTAResDB:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v7, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move-result-object v3

    invoke-virtual {v6, v4, v3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getColorForUIIndex(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)I

    move-result v3

    move v11, v3

    move-object v10, v4

    goto :goto_1

    :cond_1
    move-object v10, v4

    move v11, v5

    .line 11
    :goto_1
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->fuPTAResDB:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    invoke-virtual {v3, v2, v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getItemsForUI(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 12
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->fuPTAResDB:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->fuAvatar:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    invoke-virtual {v4, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object v2

    invoke-virtual {v3, v8, v2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->getItemForUIIndex(Ljava/util/List;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)I

    move-result v5

    :cond_2
    move v9, v5

    .line 13
    new-instance v2, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

    iget-object v7, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    invoke-virtual {v7}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getTypes()[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;->getNameResource()I

    move-result v12

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;-><init>(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;Ljava/util/List;ILjava/util/List;II)V

    .line 14
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mDataList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0x56ce

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d009c

    return v0
.end method

.method public initConfigType(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;)V
    .locals 3

    if-eqz p1, :cond_6

    .line 1
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getTypes()[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mIsLoadFinish:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    .line 5
    invoke-virtual {v0, p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->TAG:Ljava/lang/String;

    const-string v0, "initConfigType lock screen back "

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mDataList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getTypes()[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;->getItemType()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object p1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->hair:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    .line 9
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getTypes()[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;->getItemType()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object p1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->brow:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    .line 10
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getTypes()[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;->getItemType()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object p1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;->beard:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->refreshAllWithoutThumbnail()V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 13
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRefreshRow(I)V

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->requestUpdateIcon(I)V

    :cond_3
    return-void

    .line 15
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mIsLoadFinish:Z

    if-nez v0, :cond_5

    return-void

    .line 16
    :cond_5
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    .line 17
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->refreshAllWithoutThumbnail()V

    .line 18
    invoke-virtual {p0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->requestUpdateIcon(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->setPresenter(Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEditBottomList;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mIsLoadFinish:Z

    .line 3
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    instance-of v0, p1, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mIsLoadFinish:Z

    .line 7
    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->initConfigType(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;)V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provideAnimateElement, animateInElements"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "resetType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public refreshAllWithoutThumbnail()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mIsLoadFinish:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->initItemData()Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mLayoutManager:Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseLinearLayoutManager;

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mOnMimojiEditListClickListener:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;->setOnMimojiEditListClickListener(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setDataList(Ljava/util/List;)V

    return-void
.end method

.method public refreshPos(IILandroid/graphics/Bitmap;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " eee refreshPos(int row, int column, Bitmap bmp) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p3, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_5

    if-ltz p1, :cond_5

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    sub-int/2addr v0, v4

    if-le p1, v0, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

    if-ltz p2, :cond_5

    .line 6
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->getFuItemList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-le p2, v1, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->getFuItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 8
    invoke-virtual {v0, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "xxxx refreshPos(int row, int column, Bitmap bmp) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "test"

    invoke-static {v0, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 11
    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;

    .line 12
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$MimojiFuEditHolder;->getMimojiEditThumbnailAdapter()Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditThumbnailAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_1

    .line 13
    :cond_4
    iput-boolean v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mIsNeedRefresh:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public refreshRowEnd(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mIsNeedRefresh:Z

    if-eqz v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mIsNeedRefresh:Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_2

    add-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->requestUpdateIcon(I)V

    :cond_2
    return-void

    .line 7
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setRefreshRow(I)V

    .line 8
    iput-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mIsNeedRefresh:Z

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method

.method public release()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->fuPTAResDB:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->recycleBitmap()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->fuPTAResDB:Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/pta_art/manager/FuPTAResDB;->recycleBitmap()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mDataList:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 5
    :goto_0
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mDataList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->getFuItemList()Ljava/util/List;

    move-result-object v2

    move v3, v0

    .line 7
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 8
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->release()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    if-eqz v0, :cond_4

    .line 11
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mDataList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setDataList(Ljava/util/List;)V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomRecylerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    const/4 v0, 0x1

    return v0
.end method

.method public requestUpdateIcon(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimoji requestUpdateIcon row : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mIsNeedRefresh:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiEditBottomListAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    move p1, v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf7

    .line 5
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mMimojiFuType:Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getTypes()[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;->getItemType()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->refreshIcon(ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    goto :goto_0

    .line 7
    :cond_1
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->TAG:Ljava/lang/String;

    const-string v0, "mimoji void initEmoticon[] null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setFromTag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mFromTag:I

    return-void
.end method

.method public setOnMimojiEditListClickListener(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mOnMimojiEditListClickListener:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;

    return-void
.end method

.method public setPresenter(Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEditBottomList;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/android/camera/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEditBottomList;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->mPresenterMimojiEditBottomList:Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEditBottomList;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEditBottomList;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEditBottomList;->setPresenter(Lcom/android/camera/features/mimojis/mvp/base/presenter/PresenterMimoji$PresenterMimojiEditBottomList;)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    return-void
.end method
