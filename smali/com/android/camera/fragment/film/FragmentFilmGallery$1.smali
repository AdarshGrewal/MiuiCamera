.class public Lcom/android/camera/fragment/film/FragmentFilmGallery$1;
.super Ljava/lang/Object;
.source "FragmentFilmGallery.java"

# interfaces
.implements Lcom/android/camera/fragment/film/FilmResourceSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/film/FragmentFilmGallery;->loadItemList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/film/FragmentFilmGallery;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmGallery;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery$1;->this$0:Lcom/android/camera/fragment/film/FragmentFilmGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady()V
    .locals 0

    return-void
.end method

.method public onResourceSelected(Lcom/android/camera/fragment/film/FilmItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmGallery$1;->this$0:Lcom/android/camera/fragment/film/FragmentFilmGallery;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/film/FragmentFilmGallery;->access$002(Lcom/android/camera/fragment/film/FragmentFilmGallery;Lcom/android/camera/fragment/film/FilmItem;)Lcom/android/camera/fragment/film/FilmItem;

    return-void
.end method
