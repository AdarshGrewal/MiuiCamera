.class public Lcom/android/camera/fragment/mode/MoreModeListAnimation$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "MoreModeListAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/mode/MoreModeListAnimation;->startShowOldAnimation(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/mode/MoreModeListAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/mode/MoreModeListAnimation$2;->this$0:Lcom/android/camera/fragment/mode/MoreModeListAnimation;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    return-void
.end method
