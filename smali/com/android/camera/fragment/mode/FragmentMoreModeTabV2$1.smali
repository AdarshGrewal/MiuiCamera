.class public Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$1;
.super Ljava/lang/Object;
.source "FragmentMoreModeTabV2.java"

# interfaces
.implements Lmiuix/springback/view/SpringBackLayout$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->getModeList(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$1;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Lmiuix/springback/view/SpringBackLayout;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$1;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    invoke-static {p1}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$000(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;)F

    move-result p2

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-static {p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$002(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;F)F

    .line 2
    invoke-static {}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->getInstance()Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/mode/MoreModeListAnimation;->startInnerSpringAnim()V

    return-void
.end method

.method public onStateChanged(IIZ)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2$1;->this$0:Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;->access$002(Lcom/android/camera/fragment/mode/FragmentMoreModeTabV2;F)F

    :cond_0
    return-void
.end method
