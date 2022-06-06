.class public final synthetic LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0O;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic OooO00o:Lcom/android/camera/fragment/FragmentMainContent;

.field private final synthetic OooO0O0:Lcom/android/camera/aiwatermark/data/WatermarkItem;

.field private final synthetic OooO0OO:Z

.field private final synthetic OooO0Oo:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentMainContent;Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0O;->OooO00o:Lcom/android/camera/fragment/FragmentMainContent;

    iput-object p2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0O;->OooO0O0:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iput-boolean p3, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0O;->OooO0OO:Z

    iput-object p4, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0O;->OooO0Oo:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0O;->OooO00o:Lcom/android/camera/fragment/FragmentMainContent;

    iget-object v1, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0O;->OooO0O0:Lcom/android/camera/aiwatermark/data/WatermarkItem;

    iget-boolean v2, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0O;->OooO0OO:Z

    iget-object v3, p0, LOooO0O0/OooO0O0/OooO00o/OoooO00/OooOo0O;->OooO0Oo:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/fragment/FragmentMainContent;->OooO00o(Lcom/android/camera/aiwatermark/data/WatermarkItem;ZLandroid/view/View;)V

    return-void
.end method
