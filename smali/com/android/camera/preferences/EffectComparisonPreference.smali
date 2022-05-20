.class public Lcom/android/camera/preferences/EffectComparisonPreference;
.super Landroidx/preference/PreferenceCategory;
.source "EffectComparisonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public isNsPauseOrStart:Z

.field public isOsPauseOrStart:Z

.field public mCardViewNs:Landroidx/cardview/widget/CardView;

.field public mCardViewOs:Landroidx/cardview/widget/CardView;

.field public mEffectComparisonNsCover:Landroid/view/View;

.field public mEffectComparisonNsPlay:Landroid/view/View;

.field public mEffectComparisonOsCover:Landroid/view/View;

.field public mEffectComparisonOsPlay:Landroid/view/View;

.field public mNsVideoView:Landroid/widget/VideoView;

.field public mOsVideoView:Landroid/widget/VideoView;

.field public mTextViewNs:Landroid/widget/TextView;

.field public mTextViewOs:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/preferences/EffectComparisonPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/preferences/EffectComparisonPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    .line 9
    iput-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    .line 6
    iput-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    return-void
.end method

.method public static synthetic OooO00o(Landroid/widget/VideoView;Landroid/view/View;Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 2
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooOo0/OooO00o;

    invoke-direct {v0, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooOo0/OooO00o;-><init>(Landroid/widget/VideoView;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public static synthetic OooO00o(Landroid/widget/VideoView;Landroid/view/View;Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p2, 0x3

    if-ne p3, p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 3
    invoke-virtual {p0, p2}, Landroid/widget/VideoView;->setAlpha(F)V

    const/16 p0, 0x8

    .line 4
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 2
    new-instance p3, LOooO00o/OooO0O0/OooO00o/OoooOo0/OooO0O0;

    invoke-direct {p3, p1, p2}, LOooO00o/OooO0O0/OooO00o/OoooOo0/OooO0O0;-><init>(Landroid/widget/VideoView;Landroid/view/View;)V

    invoke-virtual {p1, p3}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    return-void
.end method

.method private preparedVideos()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    const v2, 0x7f11000b

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    const v2, 0x7f11000c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/android/camera/Util;->isLocaleChinese()Z

    move-result v0

    const v1, 0x7f11000f

    const v2, 0x7f11000d

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    invoke-direct {p0, v0, v3, v2}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    iget-object v3, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    invoke-direct {p0, v0, v3, v2}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    iget-object v2, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    invoke-direct {p0, v0, v2, v1}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideoView(Landroid/widget/VideoView;Landroid/view/View;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/preference/PreferenceCategory;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0144

    .line 2
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mTextViewOs:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0a0143

    .line 4
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mTextViewNs:Landroid/widget/TextView;

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0a02e1

    .line 6
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    const v0, 0x7f0a02df

    .line 7
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    const v0, 0x7f0a0141

    .line 8
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsCover:Landroid/view/View;

    const v0, 0x7f0a013f

    .line 9
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsCover:Landroid/view/View;

    const v0, 0x7f0a0142

    .line 10
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    const v0, 0x7f0a0140

    .line 11
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    const v0, 0x7f0a00ac

    .line 12
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/cardview/widget/CardView;

    iput-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mCardViewOs:Landroidx/cardview/widget/CardView;

    const v0, 0x7f0a00ab

    .line 13
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    iput-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mCardViewNs:Landroidx/cardview/widget/CardView;

    .line 14
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mCardViewOs:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mCardViewNs:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mCardViewOs:Landroidx/cardview/widget/CardView;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mCardViewNs:Landroidx/cardview/widget/CardView;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchItemScale(Landroid/view/View;)V

    .line 18
    invoke-direct {p0}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideos()V

    .line 19
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070260

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    .line 21
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mTextViewOs:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 22
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mTextViewNs:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "key_video_common_click"

    const/16 v1, 0x8

    const/4 v2, 0x1

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 3
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v4}, Landroid/widget/VideoView;->seekTo(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 7
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsCover:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsCover:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iput-boolean v2, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    .line 12
    iput-boolean v4, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "attr_video_intel_replace_wind_denoise_os"

    .line 15
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v1, "attr_pro_mode_ai_noise_reduction_os"

    .line 16
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_0
    invoke-static {v0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 19
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v4}, Landroid/widget/VideoView;->seekTo(I)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsCover:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsCover:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 23
    iput-boolean v4, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    goto :goto_2

    .line 24
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    if-nez p1, :cond_3

    .line 25
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 26
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v4}, Landroid/widget/VideoView;->seekTo(I)V

    .line 27
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->start()V

    .line 28
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsCover:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsCover:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 32
    iput-boolean v2, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    .line 33
    iput-boolean v4, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isOsPauseOrStart:Z

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "attr_video_intel_replace_wind_denoise_ns"

    .line 36
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v1, "attr_pro_mode_ai_noise_reduction_nr"

    .line 37
    invoke-interface {p1, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :goto_1
    invoke-static {v0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->mistatEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 39
    :cond_3
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->pause()V

    .line 40
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, v4}, Landroid/widget/VideoView;->seekTo(I)V

    .line 41
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsCover:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsCover:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    iget-object p1, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 44
    iput-boolean v4, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->isNsPauseOrStart:Z

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a00ab
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/preferences/EffectComparisonPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsPlay:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsPlay:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/camera/preferences/EffectComparisonPreference;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mOsVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mNsVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/preferences/EffectComparisonPreference;->preparedVideos()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonOsCover:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/preferences/EffectComparisonPreference;->mEffectComparisonNsCover:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
