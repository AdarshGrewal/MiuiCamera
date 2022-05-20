.class public Lcom/android/camera/fragment/FragmentPanorama$1;
.super Ljava/lang/Object;
.source "FragmentPanorama.java"

# interfaces
.implements Lcom/android/camera/ui/GLTextureView$EGLShareContextGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentPanorama;->initStillPreviewRender(Lcom/android/camera/ui/GLTextureView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/FragmentPanorama;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentPanorama;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentPanorama$1;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getShareContext()Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentPanorama$1;->this$0:Lcom/android/camera/fragment/FragmentPanorama;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getRenderEngine()Lcom/android/camera/ui/RenderEngineAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RenderEngineAdapter;->getEGLContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    return-object v0
.end method
