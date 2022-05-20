.class public Lcom/android/camera/fragment/vv/FragmentVVGallery$1;
.super Ljava/lang/Object;
.source "FragmentVVGallery.java"

# interfaces
.implements Lcom/android/camera/fragment/vv/ResourceSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/vv/FragmentVVGallery;->initList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vv/FragmentVVGallery;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceReady()V
    .locals 0

    return-void
.end method

.method public onResourceSelected(Lcom/android/camera/fragment/vv/VVItem;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->access$002(Lcom/android/camera/fragment/vv/FragmentVVGallery;Lcom/android/camera/fragment/vv/VVItem;)Lcom/android/camera/fragment/vv/VVItem;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/vv/FragmentVVGallery$1;->this$0:Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/vv/FragmentVVGallery;->access$100(Lcom/android/camera/fragment/vv/FragmentVVGallery;Lcom/android/camera/fragment/vv/VVItem;)V

    return-void
.end method
