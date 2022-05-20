.class public Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;
.super Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;
.source "RadioButtonPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/RadioButtonPreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CategorySingleChoiceHelper"
.end annotation


# instance fields
.field public mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

.field public final synthetic this$0:Lmiuix/preference/RadioButtonPreferenceCategory;


# direct methods
.method public constructor <init>(Lmiuix/preference/RadioButtonPreferenceCategory;Lmiuix/preference/RadioSetPreferenceCategory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->this$0:Lmiuix/preference/RadioButtonPreferenceCategory;

    .line 2
    invoke-direct {p0, p1, p2}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;-><init>(Lmiuix/preference/RadioButtonPreferenceCategory;Landroid/widget/Checkable;)V

    .line 3
    iput-object p2, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    return-void
.end method


# virtual methods
.method public getPreference()Landroidx/preference/Preference;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmiuix/preference/RadioButtonPreferenceCategory$SingleChoiceHelper;->setChecked(Z)V

    .line 2
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-virtual {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-virtual {v0}, Lmiuix/preference/RadioSetPreferenceCategory;->getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory$CategorySingleChoiceHelper;->mCategory:Lmiuix/preference/RadioSetPreferenceCategory;

    invoke-virtual {v0, p1}, Lmiuix/preference/RadioSetPreferenceCategory;->setOnPreferenceChangeInternalListener(Lmiuix/preference/OnPreferenceChangeInternalListener;)V

    return-void
.end method
