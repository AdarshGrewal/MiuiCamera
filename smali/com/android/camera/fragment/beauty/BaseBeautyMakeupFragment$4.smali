.class public Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$4;
.super Ljava/lang/Object;
.source "BaseBeautyMakeupFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->initOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$4;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    instance-of p2, p1, Lcom/android/camera/data/data/TypeItem;

    if-eqz p2, :cond_0

    .line 3
    check-cast p1, Lcom/android/camera/data/data/TypeItem;

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment$4;->this$0:Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;

    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/beauty/BaseBeautyMakeupFragment;->onAdapterItemClick(Lcom/android/camera/data/data/TypeItem;)V

    :cond_0
    return-void
.end method
