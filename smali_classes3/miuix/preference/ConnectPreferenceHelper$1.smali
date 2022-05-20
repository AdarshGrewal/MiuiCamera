.class public Lmiuix/preference/ConnectPreferenceHelper$1;
.super Ljava/lang/Object;
.source "ConnectPreferenceHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/ConnectPreferenceHelper;->initAnim(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lmiuix/preference/ConnectPreferenceHelper;


# direct methods
.method public constructor <init>(Lmiuix/preference/ConnectPreferenceHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/ConnectPreferenceHelper$1;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/ConnectPreferenceHelper$1;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {v0}, Lmiuix/preference/ConnectPreferenceHelper;->access$000(Lmiuix/preference/ConnectPreferenceHelper;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lmiuix/preference/ConnectPreferenceHelper$1;->this$0:Lmiuix/preference/ConnectPreferenceHelper;

    invoke-static {v1}, Lmiuix/preference/ConnectPreferenceHelper;->access$100(Lmiuix/preference/ConnectPreferenceHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method
