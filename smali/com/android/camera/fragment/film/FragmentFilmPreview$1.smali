.class public Lcom/android/camera/fragment/film/FragmentFilmPreview$1;
.super Ljava/lang/Object;
.source "FragmentFilmPreview.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/film/FragmentFilmPreview;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/film/FragmentFilmPreview;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/film/FragmentFilmPreview;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview$1;->this$0:Lcom/android/camera/fragment/film/FragmentFilmPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview$1;->this$0:Lcom/android/camera/fragment/film/FragmentFilmPreview;

    invoke-static {v0}, Lcom/android/camera/fragment/film/FragmentFilmPreview;->access$000(Lcom/android/camera/fragment/film/FragmentFilmPreview;)Lcom/android/camera/fragment/film/FilmResourceSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview$1;->this$0:Lcom/android/camera/fragment/film/FragmentFilmPreview;

    invoke-static {v0}, Lcom/android/camera/fragment/film/FragmentFilmPreview;->access$000(Lcom/android/camera/fragment/film/FragmentFilmPreview;)Lcom/android/camera/fragment/film/FilmResourceSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview$1;->this$0:Lcom/android/camera/fragment/film/FragmentFilmPreview;

    invoke-static {v1}, Lcom/android/camera/fragment/film/FragmentFilmPreview;->access$100(Lcom/android/camera/fragment/film/FragmentFilmPreview;)Lcom/android/camera/fragment/film/FilmList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/film/FilmItem;

    invoke-interface {v0, v1}, Lcom/android/camera/fragment/film/FilmResourceSelectedListener;->onResourceSelected(Lcom/android/camera/fragment/film/FilmItem;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/film/FragmentFilmPreview$1;->this$0:Lcom/android/camera/fragment/film/FragmentFilmPreview;

    invoke-static {v0}, Lcom/android/camera/fragment/film/FragmentFilmPreview;->access$100(Lcom/android/camera/fragment/film/FragmentFilmPreview;)Lcom/android/camera/fragment/film/FilmList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/resource/BaseResourceList;->getItem(I)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/film/FilmItem;

    .line 4
    invoke-virtual {p1}, Lcom/android/camera/fragment/film/FilmItem;->getName()Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "value_film_click_play_template: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackFilmTemplateThumbnailClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
