.class public Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1$2;
.super Ljava/lang/Object;
.source "FragmentLiveMusicPager.java"

# interfaces
.implements Lio/reactivex/functions/Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;->onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1$2;->this$1:Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1$2;->this$1:Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;

    iget-object v0, v0, Lcom/android/camera/fragment/music/FragmentLiveMusicPager$1;->this$0:Lcom/android/camera/fragment/music/FragmentLiveMusicPager;

    invoke-static {v0}, Lcom/android/camera/fragment/music/FragmentLiveMusicPager;->access$100(Lcom/android/camera/fragment/music/FragmentLiveMusicPager;)V

    return-void
.end method
