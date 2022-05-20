.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$OnPreferenceCopyListener;,
        Landroidx/preference/Preference$BaseSavedState;,
        Landroidx/preference/Preference$SummaryProvider;,
        Landroidx/preference/Preference$OnPreferenceChangeInternalListener;,
        Landroidx/preference/Preference$OnPreferenceClickListener;,
        Landroidx/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field public static final CLIPBOARD_ID:Ljava/lang/String; = "Preference"

.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field public mAllowDividerAbove:Z

.field public mAllowDividerBelow:Z

.field public mBaseMethodCalled:Z

.field public final mClickListener:Landroid/view/View$OnClickListener;

.field public mContext:Landroid/content/Context;

.field public mCopyingEnabled:Z

.field public mDefaultValue:Ljava/lang/Object;

.field public mDependencyKey:Ljava/lang/String;

.field public mDependencyMet:Z

.field public mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public mEnabled:Z

.field public mExtras:Landroid/os/Bundle;

.field public mFragment:Ljava/lang/String;

.field public mHasId:Z

.field public mHasSingleLineTitleAttr:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconResId:I

.field public mIconSpaceReserved:Z

.field public mId:J

.field public mIntent:Landroid/content/Intent;

.field public mKey:Ljava/lang/String;

.field public mLayoutResId:I

.field public mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

.field public mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field public mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field public mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

.field public mOrder:I

.field public mParentDependencyMet:Z

.field public mParentGroup:Landroidx/preference/PreferenceGroup;

.field public mPersistent:Z

.field public mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

.field public mPreferenceManager:Landroidx/preference/PreferenceManager;

.field public mRequiresKey:Z

.field public mSelectable:Z

.field public mShouldDisableView:Z

.field public mSingleLineTitle:Z

.field public mSummary:Ljava/lang/CharSequence;

.field public mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

.field public mTitle:Ljava/lang/CharSequence;

.field public mViewId:I

.field public mVisible:Z

.field public mWasDetached:Z

.field public mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 45
    sget v0, Landroidx/preference/R$attr;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Landroidx/preference/Preference;->mOrder:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Landroidx/preference/Preference;->mViewId:I

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 5
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 6
    iput-boolean v2, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 7
    iput-boolean v2, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 8
    iput-boolean v2, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 9
    iput-boolean v2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 10
    iput-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 11
    iput-boolean v2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 12
    iput-boolean v2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 13
    iput-boolean v2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 14
    sget v3, Landroidx/preference/R$layout;->preference:I

    iput v3, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 15
    new-instance v3, Landroidx/preference/Preference$1;

    invoke-direct {v3, p0}, Landroidx/preference/Preference$1;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    .line 16
    iput-object p1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    .line 17
    sget-object v3, Landroidx/preference/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 18
    sget p2, Landroidx/preference/R$styleable;->Preference_icon:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_icon:I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 19
    sget p2, Landroidx/preference/R$styleable;->Preference_key:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_key:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 20
    sget p2, Landroidx/preference/R$styleable;->Preference_title:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_title:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 21
    sget p2, Landroidx/preference/R$styleable;->Preference_summary:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_summary:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getText(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 22
    sget p2, Landroidx/preference/R$styleable;->Preference_order:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_order:I

    invoke-static {p1, p2, p3, v0}, Landroidx/core/content/res/TypedArrayUtils;->getInt(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mOrder:I

    .line 23
    sget p2, Landroidx/preference/R$styleable;->Preference_fragment:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_fragment:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    .line 24
    sget p2, Landroidx/preference/R$styleable;->Preference_layout:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_layout:I

    sget p4, Landroidx/preference/R$layout;->preference:I

    invoke-static {p1, p2, p3, p4}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mLayoutResId:I

    .line 25
    sget p2, Landroidx/preference/R$styleable;->Preference_widgetLayout:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_widgetLayout:I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getResourceId(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    .line 26
    sget p2, Landroidx/preference/R$styleable;->Preference_enabled:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_enabled:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 27
    sget p2, Landroidx/preference/R$styleable;->Preference_selectable:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_selectable:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 28
    sget p2, Landroidx/preference/R$styleable;->Preference_persistent:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_persistent:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mPersistent:Z

    .line 29
    sget p2, Landroidx/preference/R$styleable;->Preference_dependency:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_dependency:I

    invoke-static {p1, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getString(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 30
    sget p2, Landroidx/preference/R$styleable;->Preference_allowDividerAbove:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {p1, p2, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    .line 31
    sget p2, Landroidx/preference/R$styleable;->Preference_allowDividerBelow:I

    iget-boolean p3, p0, Landroidx/preference/Preference;->mSelectable:Z

    invoke-static {p1, p2, p2, p3}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    .line 32
    sget p2, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 33
    sget p2, Landroidx/preference/R$styleable;->Preference_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    goto :goto_0

    .line 34
    :cond_0
    sget p2, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 35
    sget p2, Landroidx/preference/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 36
    :cond_1
    :goto_0
    sget p2, Landroidx/preference/R$styleable;->Preference_shouldDisableView:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_shouldDisableView:I

    .line 37
    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 38
    sget p2, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz p2, :cond_2

    .line 39
    sget p2, Landroidx/preference/R$styleable;->Preference_singleLineTitle:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_singleLineTitle:I

    invoke-static {p1, p2, p3, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    .line 40
    :cond_2
    sget p2, Landroidx/preference/R$styleable;->Preference_iconSpaceReserved:I

    sget p3, Landroidx/preference/R$styleable;->Preference_android_iconSpaceReserved:I

    invoke-static {p1, p2, p3, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 41
    sget p2, Landroidx/preference/R$styleable;->Preference_isPreferenceVisible:I

    invoke-static {p1, p2, p2, v2}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 42
    sget p2, Landroidx/preference/R$styleable;->Preference_enableCopying:I

    invoke-static {p1, p2, p2, v1}, Landroidx/core/content/res/TypedArrayUtils;->getBoolean(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private registerDependency()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->registerDependent(Landroidx/preference/Preference;)V

    return-void

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerDependent(Landroidx/preference/Preference;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 2

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 2
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private unregisterDependency()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->unregisterDependent(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private unregisterDependent(Landroidx/preference/Preference;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public assignParent(Landroidx/preference/PreferenceGroup;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This preference already has a parent. You must remove the existing parent before assigning a new one."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final clearWasDetached()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    return-void
.end method

.method public compareTo(Landroidx/preference/Preference;)I
    .locals 2

    .line 2
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    iget v1, p1, Landroidx/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    .line 4
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 4
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-boolean p1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/preference/Preference;->mIconResId:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final getLayoutResource()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Landroidx/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    return v0
.end method

.method public getParent()Landroidx/preference/PreferenceGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mParentGroup:Landroidx/preference/PreferenceGroup;

    return-object v0
.end method

.method public getPersistedBoolean(Z)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getPersistedFloat(F)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getPersistedInt(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getPersistedLong(J)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-wide p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroidx/preference/PreferenceDataStore;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/PreferenceDataStore;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceManager()Landroidx/preference/PreferenceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$SummaryProvider;->provideSummary(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getWidgetLayoutResource()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isCopyingEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIconSpaceReserved()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    return v0
.end method

.method public final isShown()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-ne p0, v0, :cond_2

    const/4 v0, 0x1

    return v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    .line 5
    :cond_3
    invoke-virtual {v0}, Landroidx/preference/Preference;->isShown()Z

    move-result v0

    return v0
.end method

.method public isSingleLineTitle()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    return v0
.end method

.method public notifyChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->onDependencyChanged(Landroidx/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public notifyHierarchyChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onAttached()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/Preference;->registerDependency()V

    return-void
.end method

.method public onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 2
    iget-boolean v0, p0, Landroidx/preference/Preference;->mHasId:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/preference/Preference;->mId:J

    .line 4
    :cond_0
    invoke-direct {p0}, Landroidx/preference/Preference;->dispatchSetInitialValue()V

    return-void
.end method

.method public onAttachedToHierarchy(Landroidx/preference/PreferenceManager;J)V
    .locals 0

    .line 5
    iput-wide p2, p0, Landroidx/preference/Preference;->mId:J

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    const/4 p2, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Landroidx/preference/Preference;->mHasId:Z

    .line 9
    throw p1
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 8

    .line 1
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    iget-object v1, p0, Landroidx/preference/Preference;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget v1, p0, Landroidx/preference/Preference;->mViewId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x1020010

    .line 4
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    .line 6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 7
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    move-object v1, v2

    :goto_0
    const v5, 0x1020016

    .line 11
    invoke-virtual {p1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 12
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    .line 13
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 14
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-boolean v6, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    if-eqz v6, :cond_2

    .line 17
    iget-boolean v6, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 18
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 20
    :cond_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    const v1, 0x1020006

    .line 21
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v5, 0x4

    if-eqz v1, :cond_a

    .line 22
    iget v6, p0, Landroidx/preference/Preference;->mIconResId:I

    if-nez v6, :cond_5

    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    .line 23
    :cond_5
    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6

    .line 24
    iget-object v6, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    iget v7, p0, Landroidx/preference/Preference;->mIconResId:I

    invoke-static {v6, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    :cond_6
    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    .line 26
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_7
    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_8

    .line 28
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 29
    :cond_8
    iget-boolean v6, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v6, :cond_9

    move v6, v5

    goto :goto_2

    :cond_9
    move v6, v4

    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    :cond_a
    :goto_3
    sget v1, Landroidx/preference/R$id;->icon_frame:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    const v1, 0x102003e

    .line 31
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :cond_b
    if-eqz v1, :cond_e

    .line 32
    iget-object v6, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_c

    .line 33
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 34
    :cond_c
    iget-boolean v3, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eqz v3, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 35
    :cond_e
    :goto_4
    iget-boolean v1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    if-eqz v1, :cond_f

    .line 36
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    goto :goto_5

    :cond_f
    const/4 v1, 0x1

    .line 37
    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 38
    :goto_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 41
    iget-boolean v3, p0, Landroidx/preference/Preference;->mAllowDividerAbove:Z

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 42
    iget-boolean v3, p0, Landroidx/preference/Preference;->mAllowDividerBelow:Z

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 43
    invoke-virtual {p0}, Landroidx/preference/Preference;->isCopyingEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 44
    iget-object v3, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    if-nez v3, :cond_10

    .line 45
    new-instance v3, Landroidx/preference/Preference$OnPreferenceCopyListener;

    invoke-direct {v3, p0}, Landroidx/preference/Preference$OnPreferenceCopyListener;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    :cond_10
    if-eqz p1, :cond_11

    .line 46
    iget-object v3, p0, Landroidx/preference/Preference;->mOnCopyListener:Landroidx/preference/Preference$OnPreferenceCopyListener;

    goto :goto_6

    :cond_11
    move-object v3, v2

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 47
    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz p1, :cond_12

    if-nez v1, :cond_12

    .line 48
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_12
    return-void
.end method

.method public onClick()V
    .locals 0

    return-void
.end method

.method public onDependencyChanged(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/preference/Preference;->mDependencyMet:Z

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    return-void
.end method

.method public onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onParentChanged(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/preference/Preference;->mParentDependencyMet:Z

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public onPrepareForRemoval()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong state class -- expecting Preference State"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/preference/Preference;->mBaseMethodCalled:Z

    .line 2
    sget-object v0, Landroid/view/AbsSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onSetInitialValue(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->onSetInitialValue(Ljava/lang/Object;)V

    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->onClick()V

    .line 4
    iget-object v0, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-interface {v0, p0}, Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 10
    iget-object v1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public performClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->performClick()V

    return-void
.end method

.method public persistBoolean(Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public persistFloat(F)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedFloat(F)F

    move-result v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public persistInt(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    not-int v0, p1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public persistLong(J)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    not-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroidx/preference/Preference;->getPersistedLong(J)J

    move-result-wide v0

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, p2}, Landroidx/preference/PreferenceDataStore;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public persistString(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceDataStore()Landroidx/preference/PreferenceDataStore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/PreferenceDataStore;->putStringSet(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6
    iget-object v2, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public requireKey()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/preference/Preference;->mRequiresKey:Z

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setCopyingEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/preference/Preference;->mCopyingEnabled:Z

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/preference/Preference;->unregisterDependency()V

    .line 2
    iput-object p1, p0, Landroidx/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Landroidx/preference/Preference;->registerDependency()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/preference/Preference;->mEnabled:Z

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->shouldDisableDependents()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->notifyDependencyChange(Z)V

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mFragment:Ljava/lang/String;

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 6
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Landroidx/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/preference/Preference;->mIconResId:I

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIconSpaceReserved(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/preference/Preference;->mIconSpaceReserved:Z

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mKey:Ljava/lang/String;

    .line 2
    iget-boolean p1, p0, Landroidx/preference/Preference;->mRequiresKey:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->requireKey()V

    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/preference/Preference;->mLayoutResId:I

    return-void
.end method

.method public final setOnPreferenceChangeInternalListener(Landroidx/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    return-void
.end method

.method public setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mOnChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method public setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mOnClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public setOrder(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroidx/preference/Preference;->mOrder:I

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/preference/Preference;->mPersistent:Z

    return-void
.end method

.method public setPreferenceDataStore(Landroidx/preference/PreferenceDataStore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mPreferenceDataStore:Landroidx/preference/PreferenceDataStore;

    return-void
.end method

.method public setSelectable(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/preference/Preference;->mSelectable:Z

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/preference/Preference;->mShouldDisableView:Z

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public setSingleLineTitle(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/preference/Preference;->mHasSingleLineTitleAttr:Z

    .line 2
    iput-boolean p1, p0, Landroidx/preference/Preference;->mSingleLineTitle:Z

    return-void
.end method

.method public setSummary(I)V
    .locals 1

    .line 6
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummaryProvider()Landroidx/preference/Preference$SummaryProvider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-object p1, p0, Landroidx/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 4
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preference already has a SummaryProvider set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setSummaryProvider(Landroidx/preference/Preference$SummaryProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/Preference;->mSummaryProvider:Landroidx/preference/Preference$SummaryProvider;

    .line 2
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 3
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setViewId(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/preference/Preference;->mViewId:I

    return-void
.end method

.method public final setVisible(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mVisible:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Landroidx/preference/Preference;->mVisible:Z

    .line 3
    iget-object p1, p0, Landroidx/preference/Preference;->mListener:Landroidx/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p0}, Landroidx/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/preference/Preference;->mWidgetLayoutResId:I

    return-void
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public shouldPersist()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/Preference;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final wasDetached()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/Preference;->mWasDetached:Z

    return v0
.end method
