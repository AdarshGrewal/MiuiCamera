.class public Lcom/android/camera/preferences/EffectComparison3DPreference;
.super Landroidx/preference/PreferenceCategory;
.source "EffectComparison3DPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mLayoutView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/android/camera/preferences/EffectComparison3DPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a01f4

    .line 2
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/camera/preferences/EffectComparison3DPreference;->mLayoutView:Landroid/view/ViewGroup;

    .line 3
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparison3DPreference;->mLayoutView:Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a01f4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparison3DPreference;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/camera/EffectComparison3dDActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparison3DPreference;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lcom/android/camera/CameraIntentManager;->setStartActivityWhenLocked(Landroid/content/Intent;Z)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparison3DPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method
