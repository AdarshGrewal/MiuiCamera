.class public Lcom/android/camera/fragment/music/LiveMusicActivity$1;
.super Ljava/lang/Object;
.source "LiveMusicActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/LiveMusicActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/music/LiveMusicActivity;

.field public final synthetic val$tabs:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/music/LiveMusicActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/LiveMusicActivity$1;->this$0:Lcom/android/camera/fragment/music/LiveMusicActivity;

    iput-object p2, p0, Lcom/android/camera/fragment/music/LiveMusicActivity$1;->val$tabs:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/camera/fragment/music/LiveMusicActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageSelected position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/music/LiveMusicActivity$1;->val$tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/ActionBar$Tab;

    invoke-virtual {p1}, Landroidx/appcompat/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
