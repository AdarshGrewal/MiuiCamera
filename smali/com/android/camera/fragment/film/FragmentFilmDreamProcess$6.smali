.class public Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$6;
.super Ljava/lang/Object;
.source "FragmentFilmDreamProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->initTextureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$6;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$6;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-static {p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$700(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$6;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-static {p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$800(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$6;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$900(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method
