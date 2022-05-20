.class public abstract Lmiuix/preference/PreferenceFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/PreferenceFragment$FrameDecoration;,
        Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;
    }
.end annotation


# static fields
.field public static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "androidx.preference.PreferenceFragment.DIALOG"


# instance fields
.field public mAdapterInvalid:Z

.field public mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

.field public mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    return-void
.end method

.method public static synthetic access$700(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/preference/PreferenceFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    return p0
.end method


# virtual methods
.method public final onCreateAdapter(Landroidx/preference/PreferenceScreen;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 8

    .line 1
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p1}, Lmiuix/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    iput-object v0, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    .line 2
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lmiuix/preference/PreferenceFragment;->mAdapterInvalid:Z

    .line 3
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$100(Lmiuix/preference/PreferenceFragment$FrameDecoration;)Landroid/graphics/Paint;

    move-result-object v2

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$200(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v3

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 4
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$300(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v4

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$400(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v5

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$500(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v6

    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 5
    invoke-static {p1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->access$600(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I

    move-result v7

    .line 6
    invoke-virtual/range {v1 .. v7}, Lmiuix/preference/PreferenceGroupAdapter;->setClipPaint(Landroid/graphics/Paint;IIIII)V

    .line 7
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment;->mGroupAdapter:Lmiuix/preference/PreferenceGroupAdapter;

    return-object p1
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    .line 1
    sget p3, Lmiuix/preference/R$layout;->miuix_preference_recyclerview:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    instance-of p3, p1, Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz p3, :cond_0

    .line 3
    move-object p3, p1

    check-cast p3, Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/SpringRecyclerView;->setSpringEnabled(Z)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->onCreateLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    new-instance p3, Lmiuix/preference/PreferenceFragment$FrameDecoration;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p3, p0, v0, v1}, Lmiuix/preference/PreferenceFragment$FrameDecoration;-><init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/preference/PreferenceFragment$1;)V

    iput-object p3, p0, Lmiuix/preference/PreferenceFragment;->mFrameDecoration:Lmiuix/preference/PreferenceFragment$FrameDecoration;

    .line 6
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 7
    instance-of p3, p2, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p3, :cond_1

    .line 8
    check-cast p2, Lmiuix/springback/view/SpringBackLayout;

    invoke-virtual {p2, p1}, Lmiuix/springback/view/SpringBackLayout;->setTarget(Landroid/view/View;)V

    :cond_1
    return-object p1
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getCallbackFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 3
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;

    .line 6
    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    return-void

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "androidx.preference.PreferenceFragment.DIALOG"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_3

    return-void

    .line 8
    :cond_3
    instance-of v0, p1, Landroidx/preference/EditTextPreference;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/EditTextPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    .line 10
    :cond_4
    instance-of v0, p1, Landroidx/preference/ListPreference;

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/ListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/ListPreferenceDialogFragmentCompat;

    move-result-object p1

    goto :goto_1

    .line 12
    :cond_5
    instance-of v0, p1, Landroidx/preference/MultiSelectListPreference;

    if-eqz v0, :cond_6

    .line 13
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;->newInstance(Ljava/lang/String;)Lmiuix/preference/MultiSelectListPreferenceDialogFragmentCompat;

    move-result-object p1

    .line 14
    :goto_1
    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot display dialog for an unknown Preference type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Make sure to implement onPreferenceDisplayDialog() to handle "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "displaying a custom dialog for this Preference."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
