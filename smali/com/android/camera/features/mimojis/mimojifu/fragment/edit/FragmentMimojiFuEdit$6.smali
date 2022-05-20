.class public Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;
.super Ljava/lang/Object;
.source "FragmentMimojiFuEdit.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiEditBottomListAdapter$OnMimojiEditListClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMimojiEditListClickListener(Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;ZII)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->isClickEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->getMimojiFuType()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getTypes()[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    move-result-object v0

    aget-object p3, v0, p3

    invoke-virtual {p3}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;->getItemType()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object p3

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->getFuItemList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    if-nez p1, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2300(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2300(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;->getBundle()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v0

    .line 5
    :cond_2
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p2, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2302(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;

    .line 6
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setItem(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuItem;)V

    goto/16 :goto_0

    .line 7
    :cond_3
    invoke-static {p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection;->getColorType(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    move-result-object p2

    if-nez p2, :cond_4

    return v1

    .line 8
    :cond_4
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->getFuColorList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    .line 9
    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p4}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2400(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move-result-object p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p4}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2400(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    .line 10
    invoke-static {p4}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2500(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

    move-result-object p4

    if-eqz p4, :cond_5

    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p4}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2500(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->getNameResource()I

    move-result p4

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->getNameResource()I

    move-result v2

    if-ne p4, v2, :cond_5

    return v0

    .line 11
    :cond_5
    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p4, p3}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2402(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;

    .line 12
    iget-object p4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p4, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2502(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;)Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;

    .line 13
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    .line 14
    sget-object p4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->hair_color:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    if-ne p2, p4, :cond_6

    .line 15
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p2

    sget-object p4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->beard_color:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    invoke-virtual {p2, p4, p3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    .line 16
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object p2

    sget-object p4, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;->eyebrow_color:Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;

    invoke-virtual {p2, p4, p3}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->setColor(Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ColorType;Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuColor;)V

    .line 17
    :cond_6
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuTypeItem;->getMimojiFuType()Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType;->getTypes()[Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/bean/MimojiFuType$MimojiEditItemType;->getItemType()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p2, v1, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$1300(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;ILcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/entity/LabelCollection$ItemType;)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2202(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;Z)Z

    .line 20
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-static {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->access$2600(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;)I

    move-result p1

    const/16 p2, 0xcb

    if-ne p1, p2, :cond_7

    .line 21
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->reInitMimojiEditState(I)V

    goto :goto_1

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit$6;->this$0:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentMimojiFuEdit;->reInitMimojiEditState(I)V

    :goto_1
    return v0
.end method
