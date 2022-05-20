.class public Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender$1;
.super Ljava/lang/Object;
.source "FragmentWideSelfie.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender$1;->this$1:Lcom/android/camera/fragment/FragmentWideSelfie$StillPreviewRender;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "WideSelfie"

    const-string/jumbo v1, "onDrawFrame first frame"

    .line 1
    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
