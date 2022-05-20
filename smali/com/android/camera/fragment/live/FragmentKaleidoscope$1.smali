.class public Lcom/android/camera/fragment/live/FragmentKaleidoscope$1;
.super Ljava/lang/Object;
.source "FragmentKaleidoscope.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/live/FragmentKaleidoscope;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/live/FragmentKaleidoscope;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$1;->this$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope;

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
    iget-object p1, p0, Lcom/android/camera/fragment/live/FragmentKaleidoscope$1;->this$0:Lcom/android/camera/fragment/live/FragmentKaleidoscope;

    invoke-virtual {p1, p3, p2}, Lcom/android/camera/fragment/live/FragmentKaleidoscope;->onItemSelected(ILandroid/view/View;)V

    return-void
.end method
