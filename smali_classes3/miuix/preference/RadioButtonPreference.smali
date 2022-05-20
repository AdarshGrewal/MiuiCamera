.class public Lmiuix/preference/RadioButtonPreference;
.super Landroidx/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Landroid/os/MessageQueue$IdleHandler;


# instance fields
.field public mChangeFromClick:Z

.field public mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field public mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

.field public mRadioButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 3
    sget v0, Lmiuix/preference/R$attr;->radioButtonPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/preference/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method private initHapticFeedback()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    :cond_0
    return-void
.end method

.method private syncStartCheckAnim(Landroid/widget/CompoundButton;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    instance-of v0, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    instance-of v0, p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0, p1}, Lmiuix/preference/OnPreferenceChangeInternalListener;->onPreferenceChangeInternal(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-super {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 4
    iget-boolean p1, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    if-eqz p1, :cond_2

    iput-boolean v2, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    :cond_2
    return v1
.end method

.method public notifyChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    .line 2
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lmiuix/preference/OnPreferenceChangeInternalListener;->notifyPreferenceChangeInternal(Landroidx/preference/Preference;)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-direct {p0}, Lmiuix/preference/RadioButtonPreference;->initHapticFeedback()V

    .line 6
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreference;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/CheckBoxPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 2
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x1020016

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    const v0, 0x1020010

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    instance-of v1, v0, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 8
    check-cast v0, Landroid/widget/Checkable;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_1
    const v0, 0x1020001

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 11
    iget-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    instance-of p1, p1, Landroid/widget/CompoundButton;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mRadioButton:Landroid/view/View;

    check-cast p1, Landroid/widget/CompoundButton;

    invoke-direct {p0, p1}, Lmiuix/preference/RadioButtonPreference;->syncStartCheckAnim(Landroid/widget/CompoundButton;)V

    :cond_2
    return-void
.end method

.method public onClick()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lmiuix/preference/RadioButtonPreference;->mChangeFromClick:Z

    .line 2
    invoke-super {p0}, Landroidx/preference/TwoStatePreference;->onClick()V

    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/preference/Preference;->onDetached()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    return-void
.end method

.method public queueIdle()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/preference/RadioButtonPreference;->initHapticFeedback()V

    const/4 v0, 0x0

    return v0
.end method

.method public setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreference;->mInternalListener:Lmiuix/preference/OnPreferenceChangeInternalListener;

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
