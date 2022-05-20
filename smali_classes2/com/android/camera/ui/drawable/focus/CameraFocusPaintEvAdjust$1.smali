.class public Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CameraFocusPaintEvAdjust.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->setShowLine(ZLandroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust$1;->this$0:Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;->access$002(Lcom/android/camera/ui/drawable/focus/CameraFocusPaintEvAdjust;Z)Z

    return-void
.end method
