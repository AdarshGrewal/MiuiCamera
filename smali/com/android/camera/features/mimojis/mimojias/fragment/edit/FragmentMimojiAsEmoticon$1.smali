.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FragmentMimojiAsEmoticon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final margin:I

.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0703e8

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$1;->margin:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 2
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-static {p3}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->access$000(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 3
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1

    .line 4
    iget p2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$1;->margin:I

    invoke-virtual {p1, p2, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 5
    :cond_0
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1

    .line 6
    iget p2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$1;->margin:I

    invoke-virtual {p1, p4, p4, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    :goto_0
    return-void
.end method
