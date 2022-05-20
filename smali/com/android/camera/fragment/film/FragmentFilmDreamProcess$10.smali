.class public Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$10;
.super Ljava/lang/Object;
.source "FragmentFilmDreamProcess.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->showShareSheet()V
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
    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$10;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const-string/jumbo p1, "value_film_dream_click_play_share_cancel"

    .line 1
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmDreamClick(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess$10;->this$0:Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-static {p1}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;->access$1300(Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;)Z

    return-void
.end method
