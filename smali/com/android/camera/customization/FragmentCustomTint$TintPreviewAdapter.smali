.class public Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "FragmentCustomTint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/customization/FragmentCustomTint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TintPreviewAdapter"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/customization/TintColor;",
            ">;"
        }
    .end annotation
.end field

.field public mItemClickListener:Landroid/view/View$OnClickListener;

.field public final synthetic this$0:Lcom/android/camera/customization/FragmentCustomTint;


# direct methods
.method public constructor <init>(Lcom/android/camera/customization/FragmentCustomTint;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/camera/customization/TintColor;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->mContext:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->mData:Ljava/util/List;

    .line 4
    iput-object p4, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2
    invoke-static {}, Lcom/android/camera/customization/FragmentCustomTint;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "destroy image res "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/customization/FragmentCustomTint;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "instantiateItem position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d0031

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const p1, 0x7f0a01df

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v3}, Lcom/android/camera/customization/FragmentCustomTint;->access$300(Lcom/android/camera/customization/FragmentCustomTint;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v3}, Lcom/android/camera/customization/FragmentCustomTint;->access$400(Lcom/android/camera/customization/FragmentCustomTint;)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v2, 0x7f0a00fc

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 10
    iget-object v3, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->mData:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/customization/TintColor;

    invoke-virtual {v3}, Lcom/android/camera/customization/TintColor;->previewResource()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 12
    iget-object v4, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v4}, Lcom/android/camera/customization/FragmentCustomTint;->access$300(Lcom/android/camera/customization/FragmentCustomTint;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    iget-object v4, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v4}, Lcom/android/camera/customization/FragmentCustomTint;->access$400(Lcom/android/camera/customization/FragmentCustomTint;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 14
    iget-object v3, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v3}, Lcom/android/camera/customization/FragmentCustomTint;->access$100(Lcom/android/camera/customization/FragmentCustomTint;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 15
    iget-object v4, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v4}, Lcom/android/camera/customization/FragmentCustomTint;->access$200(Lcom/android/camera/customization/FragmentCustomTint;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v4}, Lcom/android/camera/customization/FragmentCustomTint;->access$500(Lcom/android/camera/customization/FragmentCustomTint;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0701f5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 16
    iget-object v1, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v1}, Lcom/android/camera/customization/FragmentCustomTint;->access$100(Lcom/android/camera/customization/FragmentCustomTint;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 17
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 18
    iget-object v1, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/customization/FragmentCustomTint;->access$600(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V

    .line 19
    iget-object v1, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v1, v0, p2}, Lcom/android/camera/customization/FragmentCustomTint;->access$700(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;I)V

    .line 20
    iget-object v1, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {v1, v0, p2}, Lcom/android/camera/customization/FragmentCustomTint;->access$800(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;I)V

    .line 21
    iget-object p2, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {p2, v0}, Lcom/android/camera/customization/FragmentCustomTint;->access$900(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V

    .line 22
    iget-object p2, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->this$0:Lcom/android/camera/customization/FragmentCustomTint;

    invoke-static {p2, v0}, Lcom/android/camera/customization/FragmentCustomTint;->access$1000(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V

    .line 23
    iget-object p2, p0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
