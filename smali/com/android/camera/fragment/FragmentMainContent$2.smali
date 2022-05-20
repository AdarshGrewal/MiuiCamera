.class public Lcom/android/camera/fragment/FragmentMainContent$2;
.super Ljava/lang/Object;
.source "FragmentMainContent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/FragmentMainContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentMainContent;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$2;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "FragmentMainContent"

    const-string/jumbo p1, "on cancel click."

    .line 2
    invoke-static {p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO00o(Landroid/widget/TextView;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Ljava/util/List;Landroid/widget/TextView;Lcom/android/camera/aiwatermark/data/WatermarkItem;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 3
    invoke-virtual {p2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/data/data/DataItemBase;->editor()Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    move-result-object p2

    .line 6
    invoke-virtual {p3}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/data/provider/DataProvider$ProviderEditor;

    .line 7
    invoke-interface {p2}, Lcom/android/camera/data/provider/DataProvider$ProviderEditor;->commit()Z

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentMainContent$2;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {p1}, Lcom/android/camera/fragment/FragmentMainContent;->access$300(Lcom/android/camera/fragment/FragmentMainContent;)I

    move-result p2

    invoke-static {}, Lcom/android/camera/Util;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/android/camera/fragment/FragmentMainContent;->access$400(Lcom/android/camera/fragment/FragmentMainContent;ILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentMainContent$2;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {v0}, Lcom/android/camera/fragment/FragmentMainContent;->access$100(Lcom/android/camera/fragment/FragmentMainContent;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getMajorWatermarkItem()Lcom/android/camera/aiwatermark/data/WatermarkItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentMainContent$2;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-static {v1, p1, v0}, Lcom/android/camera/fragment/FragmentMainContent;->access$200(Lcom/android/camera/fragment/FragmentMainContent;Landroid/view/View;Lcom/android/camera/aiwatermark/data/WatermarkItem;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 6
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/aiwatermark/data/WatermarkItem;->getLocationList()Ljava/util/ArrayList;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 8
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 11
    new-instance v4, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/camera/fragment/FragmentMainContent$2;->this$0:Lcom/android/camera/fragment/FragmentMainContent;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f120139

    .line 12
    invoke-virtual {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 13
    new-instance v5, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOo0;

    invoke-direct {v5, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOo0;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v4, v3, v2, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f1208f5

    .line 14
    sget-object v3, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOo0O;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OooOo0O;

    invoke-virtual {v4, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f12034b

    .line 15
    new-instance v3, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOo0o;

    invoke-direct {v3, p0, v1, p1, v0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooOo0o;-><init>(Lcom/android/camera/fragment/FragmentMainContent$2;Ljava/util/List;Landroid/widget/TextView;Lcom/android/camera/aiwatermark/data/WatermarkItem;)V

    invoke-virtual {v4, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 16
    invoke-virtual {v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    :cond_4
    :goto_0
    return-void
.end method
