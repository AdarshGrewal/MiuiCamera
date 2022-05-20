.class public Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$ItemPadding;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FragmentFastMotionExtra.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemPadding"
.end annotation


# instance fields
.field public mPadding:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$ItemPadding;->mPadding:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionExtra$ItemPadding;->mPadding:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
