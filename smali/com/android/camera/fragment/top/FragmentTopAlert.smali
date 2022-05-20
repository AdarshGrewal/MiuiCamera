.class public Lcom/android/camera/fragment/top/FragmentTopAlert;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentTopAlert.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;
.implements Lcom/android/camera/VolumeControlPanel$OnVolumePressAnimatorListener;
.implements Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;,
        Lcom/android/camera/fragment/top/FragmentTopAlert$TopAlertRunnable;,
        Lcom/android/camera/fragment/top/FragmentTopAlert$ShortDurationDescriptionTip;,
        Lcom/android/camera/fragment/top/FragmentTopAlert$PermanentToastTip;,
        Lcom/android/camera/fragment/top/FragmentTopAlert$ShortDurationToastTip;
    }
.end annotation


# static fields
.field public static final AUDIO_MAP_DELAY_TIME:J = 0x7d0L

.field public static final DESCRIPTION_FILTER:I = 0x1

.field public static final DESCRIPTION_NORMAL:I = 0x0

.field public static final FRAGMENT_INFO:I = 0xfd

.field public static final HINT_DELAY_TIME_3S:J = 0xbb8L

.field public static final TAG:Ljava/lang/String;

.field public static final TIP_480FPS_960FPS_DESC:Ljava/lang/String; = "960fps_desc"

.field public static final TIP_4K_HDR10P:Ljava/lang/String; = "4khdr10p_desc"

.field public static final TIP_8K_DESC:Ljava/lang/String; = "8k_desc"

.field public static final TIP_AI:Ljava/lang/String; = "ai"

.field public static final TIP_AI_AUDIO:Ljava/lang/String; = "ai_audio"

.field public static final TIP_AI_AUDIO_NEW_DESC:Ljava/lang/String; = "ai_aduio_new_desc"

.field public static final TIP_AI_AUDIO_SINGLE:Ljava/lang/String; = "ai_audio_single"

.field public static final TIP_AI_AUDIO_SINGLE_DESC:Ljava/lang/String; = "ai_aduio_single_desc"

.field public static final TIP_AI_ENHANCED_VIDEO:Ljava/lang/String; = "ai_enhanced_video"

.field public static final TIP_AI_WATERMARK:Ljava/lang/String; = "ai_watermark"

.field public static final TIP_AUTO_HIBERNATION_DESC:Ljava/lang/String; = "auto_hibernation_desc"

.field public static final TIP_AUTO_ZOOM:Ljava/lang/String; = "auto_zoom"

.field public static final TIP_COLOR_ENHANCE:Ljava/lang/String; = "color_enhance"

.field public static final TIP_COLOR_MODE:Ljava/lang/String; = "color_mode"

.field public static final TIP_ESP_DISPLAY:Ljava/lang/String; = "esp_display"

.field public static final TIP_FLASH:Ljava/lang/String; = "flash"

.field public static final TIP_HAND_GESTURE:Ljava/lang/String; = "hand_gesture"

.field public static final TIP_HAND_GESTURE_DESC:Ljava/lang/String; = "hand_gesture_desc"

.field public static final TIP_HDR:Ljava/lang/String; = "hdr"

.field public static final TIP_LIVE_SHOT:Ljava/lang/String; = "live_shot"

.field public static final TIP_MACRO:Ljava/lang/String; = "macro"

.field public static final TIP_METER:Ljava/lang/String; = "meter"

.field public static final TIP_MI_LIVE_DURATION:Ljava/lang/String; = "live_duration"

.field public static final TIP_RECOMMEND_ULTRA_WIDE_DESC:Ljava/lang/String; = "recommend_ultra_wide_desc"

.field public static final TIP_SPEECH_SHUTTER_DESC:Ljava/lang/String; = "speech_shutter_desc"

.field public static final TIP_SUBTITLE:Ljava/lang/String; = "subtitle"

.field public static final TIP_SUPER_EIS:Ljava/lang/String; = "super_eis"

.field public static final TIP_SUPER_EIS_PRO:Ljava/lang/String; = "super_eis_pro"

.field public static final TIP_TIMER_BURST:Ljava/lang/String; = "timer_burst"

.field public static final TIP_ULTRA_PIXEL:Ljava/lang/String; = "ultra_pixel"

.field public static final TIP_ULTRA_PIXEL_PORTRAIT:Ljava/lang/String; = "ultra_pixel_portrait"

.field public static final TIP_ULTRA_WIDE_BOKEH:Ljava/lang/String; = "ultra_wide_bokeh"

.field public static final TIP_UNKNOW:Ljava/lang/String; = "unknow"

.field public static final TIP_VIDEO_BEAUTIFY:Ljava/lang/String; = "video_beautify"

.field public static final TIP_VIDEO_BOKEH:Ljava/lang/String; = "video_bokeh"

.field public static sPendingRecordingTimeState:I


# instance fields
.field public mAiAudioBGTip:Lcom/android/camera/customization/BGTintTextView;

.field public final mAiAudioBGTipHideRunnable:Ljava/lang/Runnable;

.field public mAiAudioSingleBGTip:Lcom/android/camera/customization/BGTintTextView;

.field public mAiAudioTip:Landroid/widget/TextView;

.field public mAiEnhancedVideoTip:Lcom/android/camera/customization/BGTintTextView;

.field public mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

.field public mAlertAiDetectTipHitRunable:Ljava/lang/Runnable;

.field public mAlertAiSceneSwitchHintTime:J

.field public mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mAlertImageType:I

.field public mAlertRecommendDescRunable:Ljava/lang/Runnable;

.field public mAlertRecordingText:Landroid/widget/TextView;

.field public mAlertRecordingTextDenominator:Landroid/widget/TextView;

.field public mAlertRecordingTextNumerator:Landroid/widget/TextView;

.field public mAlertTopHintHideRunnable:Ljava/lang/Runnable;

.field public mAnimator1:Landroid/animation/ObjectAnimator;

.field public mAudioMapMove:Lcom/android/camera/AudioMapMove;

.field public mAudioZoomHorn:Landroid/widget/ImageView;

.field public mAudioZoomIndicator:Lcom/android/camera/ui/AudioZoomIndicator;

.field public mAudioZoomLayout:Landroid/view/View;

.field public mBlingAnimation:Landroid/view/animation/AlphaAnimation;

.field public mCastVideoTip:Lcom/android/camera/customization/BGTintTextView;

.field public mClickRectMoveDistance:F

.field public mCustomStubTransition:Landroid/animation/LayoutTransition;

.field public mCustomToastTransition:Landroid/animation/LayoutTransition;

.field public mDocumentStateButton:Lcom/android/camera/ui/MutiStateButton;

.field public mDocumentStateMaps:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDualVideoTip:Lcom/android/camera/customization/BGTintTextView;

.field public final mDualVideoTipHideRunnable:Ljava/lang/Runnable;

.field public mESPDisplayTip:Lcom/android/camera/customization/BGTintTextView;

.field public mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

.field public mEndGravityTipLayout:Landroid/widget/LinearLayout;

.field public mFastmotionIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

.field public mFastmotionProAlertRecordingText:Landroid/widget/TextView;

.field public mFastmotionProIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

.field public mFastmotionProTip:Landroid/widget/LinearLayout;

.field public mFastmotionProTipSaveTime:Landroid/widget/TextView;

.field public mFastmotionProTipSpeedDesc:Landroid/widget/TextView;

.field public mFastmotionProTipTitle:Landroid/widget/TextView;

.field public mFastmotionTip:Landroid/widget/LinearLayout;

.field public final mFastmotionTipAnnounceRunnable:Ljava/lang/Runnable;

.field public mFastmotionTipContentDescription:Ljava/lang/String;

.field public mFastmotionTipDesc:Landroid/widget/TextView;

.field public mFastmotionTipTitle:Landroid/widget/TextView;

.field public final mFastmotionTipToResetRunnable:Ljava/lang/Runnable;

.field public mFrameLayoutAudioMap:Landroid/widget/FrameLayout;

.field public mFrameLayoutHistogram:Landroid/widget/FrameLayout;

.field public mHandGestureTip:Lcom/android/camera/customization/BGTintTextView;

.field public mHandler:Landroid/os/Handler;

.field public mHistogramView:Lcom/android/camera/ui/HistogramView;

.field public mIsAlertAnim:Z

.field public mIsESPFeatureTipVisibleBeforeRecording:Z

.field public mIsParameterDescriptionVisibleBeforeRecording:Z

.field public mIsParameterResetVisibleBeforeRecording:Z

.field public mIsVideoCastIntent:Z

.field public mIsVideoRecording:Z

.field public mIsVideoUltraClearTipVisibleBeforeProVideoSimple:Z

.field public mLastEndGravityHeight:I

.field public mLastEndGravityWidth:I

.field public mLiveMusiHintText:Landroid/widget/TextView;

.field public mLiveMusicClose:Landroid/widget/ImageView;

.field public mLiveMusicHintLayout:Landroid/widget/LinearLayout;

.field public mLlAlertRecordingTimeView:Landroid/widget/LinearLayout;

.field public mLyingDirectHintText:Landroid/widget/TextView;

.field public mMacroModeTip:Lcom/android/camera/customization/BGTintTextView;

.field public final mMacroModeTipHideRunnable:Ljava/lang/Runnable;

.field public mManualParameterDescriptionTip:Landroid/widget/ImageView;

.field public mManualParameterResetTip:Landroid/widget/ImageView;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field public mPercentX:F

.field public mPercentY:F

.field public mPermanentTip:Lcom/android/camera/customization/BGTintTextView;

.field public mProColourTip:Lcom/android/camera/customization/BGTintTextView;

.field public mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mProfessionalLayout:Landroid/widget/FrameLayout;

.field public mRecommendTip:Landroid/widget/TextView;

.field public mRunnable:Ljava/lang/Runnable;

.field public mShortDurationDescriptionTip:Ljava/lang/String;

.field public mShortDurationToastTip:Ljava/lang/String;

.field public mShow:Z

.field public mShowAction:Ljava/lang/Runnable;

.field public mShowSlideSwitchLayout:Ljava/lang/Runnable;

.field public mSlideSwitchButton:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

.field public mStartGravityTipLayout:Landroid/widget/LinearLayout;

.field public mSubtitleTip:Lcom/android/camera/customization/BGTintTextView;

.field public mSuperNightSeTip:Lcom/android/camera/customization/BGTintTextView;

.field public mSwitchAnimator:Z

.field public final mTimerBurstRunnable:Ljava/lang/Runnable;

.field public mTimerBurstTip:Lcom/android/camera/customization/BGTintTextView;

.field public mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

.field public mToastTipFlash:Landroid/widget/ImageView;

.field public mToastTopTipLayout:Landroid/widget/LinearLayout;

.field public mTopHintTextResource:I

.field public mTopTipLayout:Landroid/widget/LinearLayout;

.field public mVideoCastStateIndicator:Landroid/widget/LinearLayout;

.field public mVideoTagStringBuilder:Ljava/lang/StringBuilder;

.field public mVideoTagView:Lcom/android/camera/ui/VideoTagView;

.field public mVideoUltraClearTip:Landroid/widget/TextView;

.field public final mViewHideRunnable:Ljava/lang/Runnable;

.field public mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

.field public mVolumeControlValue:F

.field public mXMovePosition:F

.field public mZoomTip:Landroid/widget/TextView;

.field public final mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

.field public mZoomTipContentDescription:Ljava/lang/String;

.field public final mZoomTipToResetRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/camera/fragment/top/FragmentTopAlert;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->sPendingRecordingTimeState:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const-string/jumbo v0, "unknow"

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationToastTip:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsAlertAnim:Z

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopHintTextResource:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    .line 7
    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSwitchAnimator:Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoTagStringBuilder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomIndicator:Lcom/android/camera/ui/AudioZoomIndicator;

    .line 10
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomLayout:Landroid/view/View;

    .line 11
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomHorn:Landroid/widget/ImageView;

    .line 12
    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0o0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0o0;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$3;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$3;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRunnable:Ljava/lang/Runnable;

    .line 14
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$5;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$5;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShowAction:Ljava/lang/Runnable;

    .line 15
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$6;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$6;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mViewHideRunnable:Ljava/lang/Runnable;

    .line 16
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$7;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$7;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

    .line 17
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$8;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$8;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipToResetRunnable:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$9;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$9;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipAnnounceRunnable:Ljava/lang/Runnable;

    .line 19
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$10;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$10;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipToResetRunnable:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$11;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$11;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mMacroModeTipHideRunnable:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$12;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$12;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDualVideoTipHideRunnable:Ljava/lang/Runnable;

    .line 22
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$13;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$13;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTimerBurstRunnable:Ljava/lang/Runnable;

    .line 23
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$14;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$14;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioBGTipHideRunnable:Ljava/lang/Runnable;

    .line 24
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$15;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$15;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertTopHintHideRunnable:Ljava/lang/Runnable;

    .line 25
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$16;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$16;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertAiDetectTipHitRunable:Ljava/lang/Runnable;

    .line 26
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    .line 27
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$23;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$23;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 28
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$24;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$24;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShowSlideSwitchLayout:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic OooO00o(Lcom/android/camera/ui/ToggleSwitch;Z)V
    .locals 1

    .line 16
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_0

    if-eqz p0, :cond_1

    const/16 p1, 0xf8

    .line 17
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const/16 p1, 0xf9

    .line 18
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic OooO0O0(Lcom/android/camera/ui/ToggleSwitch;Z)V
    .locals 1

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p0

    const/16 v0, 0xa4

    invoke-virtual {p0, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p0

    check-cast p0, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_0

    if-eqz p0, :cond_1

    const/16 p1, 0xf6

    .line 4
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    const/16 p1, 0xf7

    .line 5
    invoke-interface {p0, p1}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic OooO0OO()V
    .locals 2

    .line 3
    sget-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showCloseConfirm onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic OooO0Oo()V
    .locals 2

    .line 2
    sget-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick trackManuallyResetDialogCancel"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackManuallyResetDialogCancel()V

    return-void
.end method

.method public static synthetic OooO0o0()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackLyingDirectShow(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/AudioMapMove;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioMapMove:Lcom/android/camera/AudioMapMove;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/camera/fragment/top/FragmentTopAlert;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/camera/fragment/top/FragmentTopAlert;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertZoom(Z)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/android/camera/fragment/top/FragmentTopAlert;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAudioZoomIndicator(Z)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTip:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/android/camera/fragment/top/FragmentTopAlert;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipContentDescription:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTip:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/customization/BGTintTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mMacroModeTip:Lcom/android/camera/customization/BGTintTextView;

    return-object p0
.end method

.method public static synthetic access$1900(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/customization/BGTintTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDualVideoTip:Lcom/android/camera/customization/BGTintTextView;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static synthetic access$2000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/customization/BGTintTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTimerBurstTip:Lcom/android/camera/customization/BGTintTextView;

    return-object p0
.end method

.method public static synthetic access$2100(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/customization/BGTintTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioBGTip:Lcom/android/camera/customization/BGTintTextView;

    return-object p0
.end method

.method public static synthetic access$2200(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/customization/BGTintTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mPermanentTip:Lcom/android/camera/customization/BGTintTextView;

    return-object p0
.end method

.method public static synthetic access$2300(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$2402(Lcom/android/camera/fragment/top/FragmentTopAlert;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$2500()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$2600(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusicHintLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$2702(Lcom/android/camera/fragment/top/FragmentTopAlert;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mPercentX:F

    return p1
.end method

.method public static synthetic access$2802(Lcom/android/camera/fragment/top/FragmentTopAlert;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mXMovePosition:F

    return p1
.end method

.method public static synthetic access$2902(Lcom/android/camera/fragment/top/FragmentTopAlert;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mPercentY:F

    return p1
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/VolumeControlPanel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

    return-object p0
.end method

.method public static synthetic access$3000(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static synthetic access$3100(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$3200(Lcom/android/camera/fragment/top/FragmentTopAlert;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    return p0
.end method

.method public static synthetic access$3300(Lcom/android/camera/fragment/top/FragmentTopAlert;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initEndGravityTipLayout(I)V

    return-void
.end method

.method public static synthetic access$3400(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/TopAlertSlideSwitchButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSlideSwitchButton:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    return-object p0
.end method

.method public static synthetic access$3500(Lcom/android/camera/fragment/top/FragmentTopAlert;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static synthetic access$402(Lcom/android/camera/fragment/top/FragmentTopAlert;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/ui/ToggleSwitch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;ZLandroid/widget/LinearLayout$LayoutParams;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;ZLandroid/widget/LinearLayout$LayoutParams;I)V

    return-void
.end method

.method public static synthetic access$702(Lcom/android/camera/fragment/top/FragmentTopAlert;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationToastTip:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$800(Lcom/android/camera/fragment/top/FragmentTopAlert;)Lcom/android/camera/customization/BGTintTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/camera/fragment/top/FragmentTopAlert;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    return-void
.end method

.method private addTextViewShadowStyle(Landroid/view/View;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/android/camera/customization/BGTintTextView;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f130165

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    return-void
.end method

.method private addViewToTipLayout(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 23
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;ZLandroid/widget/LinearLayout$LayoutParams;I)V

    return-void
.end method

.method private addViewToTipLayout(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;ZLandroid/widget/LinearLayout$LayoutParams;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method private addViewToTipLayout(Landroid/view/View;ZLandroid/widget/LinearLayout$LayoutParams;I)V
    .locals 2

    if-eqz p1, :cond_a

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    iget-boolean p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsAlertAnim:Z

    if-eqz p2, :cond_2

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customStubViewTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eq p2, v0, :cond_3

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customStubViewTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 7
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addTextViewShadowStyle(Landroid/view/View;)V

    if-gez p4, :cond_4

    .line 8
    :try_start_0
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 9
    :cond_4
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, p4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 10
    :catch_0
    sget-object p2, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string p4, "The specified child already has a parent. You must call removeView() on the child\'s parent first"

    invoke-static {p2, p4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez p3, :cond_5

    .line 11
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p3, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x7f070770

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 13
    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 14
    iput p2, p3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 15
    :cond_5
    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_8

    .line 16
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    if-gtz p2, :cond_7

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStartGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p2

    if-lez p2, :cond_6

    goto :goto_2

    .line 17
    :cond_6
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    const p4, 0x7fffffff

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_3

    .line 18
    :cond_7
    :goto_2
    move-object p2, p1

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const v0, 0x7f070775

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 19
    :cond_8
    :goto_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 21
    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0o;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0o;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->checkChildMargin()V

    :cond_a
    :goto_4
    return-void
.end method

.method private addViewToTipLayout(Landroid/view/View;ZLandroid/widget/LinearLayout$LayoutParams;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    if-eqz p1, :cond_8

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_2

    .line 25
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 26
    iget-boolean p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsAlertAnim:Z

    if-eqz p2, :cond_2

    .line 27
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customStubViewTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eq p2, v0, :cond_3

    .line 28
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customStubViewTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    .line 29
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_3
    :goto_0
    if-eqz p4, :cond_4

    .line 30
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 31
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addTextViewShadowStyle(Landroid/view/View;)V

    .line 32
    :try_start_0
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 33
    :catch_0
    sget-object p2, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string p4, "The specified child already has a parent. You must call removeView() on the child\'s parent first"

    invoke-static {p2, p4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez p3, :cond_5

    .line 34
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p2, -0x2

    invoke-direct {p3, p2, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 35
    :cond_5
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p5, :cond_6

    .line 36
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 37
    :cond_6
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 38
    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOO0;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOO0;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->checkChildMargin()V

    :cond_8
    :goto_2
    return-void
.end method

.method private addViewToToastLayout(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;ZI)V

    return-void
.end method

.method private addViewToToastLayout(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, -0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;ZI)V

    return-void
.end method

.method private addViewToToastLayout(Landroid/view/View;ZI)V
    .locals 3

    if-eqz p1, :cond_a

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x4

    if-lt v0, v2, :cond_2

    const-string/jumbo v0, "unknow"

    .line 6
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationToastTip:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;Z)V

    :cond_2
    if-eqz p2, :cond_5

    .line 8
    iget-boolean p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsAlertAnim:Z

    if-eqz p2, :cond_5

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    .line 10
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customToastLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eq p2, v0, :cond_4

    :cond_3
    const/4 p2, 0x1

    .line 11
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setToastTipLayoutParams(Z)V

    .line 12
    :cond_4
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customStubViewTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eq p2, v0, :cond_6

    .line 13
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customStubViewTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    .line 14
    :cond_5
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setToastTipLayoutParams(Z)V

    .line 15
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 16
    :cond_6
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addTextViewShadowStyle(Landroid/view/View;)V

    if-gez p3, :cond_7

    .line 17
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 18
    :cond_7
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 19
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    .line 20
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 21
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 22
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 24
    new-instance p2, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOO0O;

    invoke-direct {p2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOO0O;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_9

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->checkChildMargin()V

    :cond_a
    :goto_2
    return-void
.end method

.method private alertAiSceneSelector(Ljava/lang/String;Ljava/lang/String;ILcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;Z)V
    .locals 4

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ToggleSwitch;->setTextOnAndOff(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez p3, :cond_2

    const-wide/16 p1, 0xbb8

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertAiSceneSwitchHintTime:J

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 8
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result p3

    .line 9
    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-ne p3, v0, :cond_3

    .line 10
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShowAction:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    move-wide p1, v1

    :cond_1
    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShowAction:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    .line 13
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {p1, p4}, Lcom/android/camera/ui/ToggleSwitch;->setOnCheckedChangeListener(Lcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {p1, p5}, Lcom/android/camera/ui/ToggleSwitch;->setChecked(Z)V

    return-void
.end method

.method private alertAudioZoomIndicator(Z)V
    .locals 7

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00O0oO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomHorn:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomLayout:Landroid/view/View;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomIndicator:Lcom/android/camera/ui/AudioZoomIndicator;

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    return-void

    .line 5
    :cond_2
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 6
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ActivityBase;

    invoke-virtual {p1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 7
    invoke-interface {p1}, Lcom/android/camera/module/Module;->getModuleState()Lcom/android/camera/module/common/IModuleState;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/IModuleState;->isAlive()Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 8
    instance-of v2, p1, Lcom/android/camera/module/VideoModule;

    if-eqz v2, :cond_5

    .line 9
    move-object v1, p1

    check-cast v1, Lcom/android/camera/module/VideoModule;

    :cond_5
    if-nez v1, :cond_6

    return-void

    .line 10
    :cond_6
    invoke-virtual {v1}, Lcom/android/camera/module/VideoModule;->isNeedAlertAudioZoomIndicator()Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 11
    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomIndicator:Lcom/android/camera/ui/AudioZoomIndicator;

    if-nez p1, :cond_8

    .line 12
    new-instance p1, Lcom/android/camera/ui/AudioZoomIndicator;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/camera/ui/AudioZoomIndicator;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomIndicator:Lcom/android/camera/ui/AudioZoomIndicator;

    if-eqz v0, :cond_8

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomLayout:Landroid/view/View;

    const v2, 0x7f0a006d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/camera/ui/AudioZoomIndicator;

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomIndicator:Lcom/android/camera/ui/AudioZoomIndicator;

    .line 14
    :cond_8
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getMinZoomRatio()F

    move-result p1

    .line 15
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getMaxZoomRatio()F

    move-result v2

    .line 16
    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->getZoomRatio()F

    move-result v1

    .line 17
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomLayout:Landroid/view/View;

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomIndicator:Lcom/android/camera/ui/AudioZoomIndicator;

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v3, v6, :cond_b

    if-eqz v0, :cond_a

    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomLayout:Landroid/view/View;

    goto :goto_2

    :cond_a
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomIndicator:Lcom/android/camera/ui/AudioZoomIndicator;

    .line 18
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_b

    move v3, v4

    goto :goto_3

    :cond_b
    move v3, v5

    :goto_3
    if-eqz v3, :cond_c

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomIndicator:Lcom/android/camera/ui/AudioZoomIndicator;

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/camera/ui/AudioZoomIndicator;->update(FFF)V

    goto :goto_5

    .line 20
    :cond_c
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 21
    iput v4, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-eqz v0, :cond_d

    .line 22
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomLayout:Landroid/view/View;

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomIndicator:Lcom/android/camera/ui/AudioZoomIndicator;

    :goto_4
    invoke-direct {p0, v0, v5, p1, v6}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;ZLandroid/widget/LinearLayout$LayoutParams;I)V

    :cond_e
    :goto_5
    return-void
.end method

.method private alertTintColor()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->isYellowTintColor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f0600da

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private alertZoom(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xb6

    .line 3
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$DualController;

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$DualController;->isButtonVisible()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v2, :cond_3

    const/4 v1, 0x3

    .line 6
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-interface {v2, v1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v1

    const/16 v2, 0xf6

    if-ne v1, v2, :cond_3

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0xcc

    .line 10
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v1, v2, :cond_8

    const/16 v1, 0xbc

    if-ne v1, v2, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getZoomRatioTipText(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 13
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x422c0000    # 43.0f

    if-eqz p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x428c0000    # 70.0f

    .line 15
    invoke-static {v3}, Lcom/android/camera/Util;->pixelToXxhdp(F)F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/android/camera/Util;->pixelToXxhdp(F)F

    move-result v0

    aput v0, v1, v2

    const-string/jumbo v0, "textSize"

    .line 16
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/camera/Util;->pixelToXxhdp(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    .line 20
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 21
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;)V

    goto :goto_1

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    :goto_1
    return-void

    .line 23
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    return-void
.end method

.method private alterTextColor()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/customization/TintColor;->isYellowTintColor()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x1000000

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v0

    const v1, 0x7f060094

    invoke-virtual {v0, v1}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private checkChildMargin()V
    .locals 7

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooO()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateButton:Lcom/android/camera/ui/MutiStateButton;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    goto :goto_2

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070777

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070772

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v4

    .line 6
    :goto_0
    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateButton:Lcom/android/camera/ui/MutiStateButton;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    .line 7
    :goto_1
    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 8
    iget-object v6, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateButton:Lcom/android/camera/ui/MutiStateButton;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v3, :cond_5

    if-eqz v2, :cond_4

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertTopMargin()I

    move-result v2

    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v0

    .line 10
    iput v1, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 11
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertTopMarginSupportDocument()I

    move-result v0

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    iput v4, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_2

    .line 13
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertTopMargin()I

    move-result v0

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_6
    :goto_2
    return-void
.end method

.method private checkDependingVisible()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private clearHandlerCallbacks()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private customStubViewTransition()Landroid/animation/LayoutTransition;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomStubTransition:Landroid/animation/LayoutTransition;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomStubTransition:Landroid/animation/LayoutTransition;

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 3
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    const/4 v3, 0x0

    invoke-static {v3, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 4
    new-instance v4, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v0, [F

    .line 5
    fill-array-data v4, :array_1

    invoke-static {v3, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 6
    new-instance v3, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomStubTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 8
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomStubTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v0, v6, v7}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 9
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomStubTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomStubTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomStubTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomStubTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomStubTransition:Landroid/animation/LayoutTransition;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private customToastLayoutTransition()Landroid/animation/LayoutTransition;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomToastTransition:Landroid/animation/LayoutTransition;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 2
    fill-array-data v1, :array_0

    const-string v2, "alpha"

    const/4 v3, 0x0

    invoke-static {v3, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 3
    new-instance v4, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v4}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v4, v0, [F

    .line 4
    fill-array-data v4, :array_1

    invoke-static {v3, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 5
    new-instance v3, Lmiuix/view/animation/SineEaseOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    new-instance v3, Lcom/android/camera/fragment/top/FragmentTopAlert$1;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$1;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomToastTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0x0

    .line 8
    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 9
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomToastTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v0, v6, v7}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 10
    iget-object v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomToastTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomToastTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomToastTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v1, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomToastTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCustomToastTransition:Landroid/animation/LayoutTransition;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private forceResetFastmotionProManually()V
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyWB()Lcom/android/camera/data/data/config/ComponentManuallyWB;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentManuallyEV()Lcom/android/camera/data/data/config/ComponentManuallyEV;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 10
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/data/data/ComponentData;

    const/16 v4, 0xa9

    .line 11
    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/ComponentData;->isModified(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 12
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_0
    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/ComponentData;->reset(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xae

    .line 15
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;

    if-eqz v0, :cond_2

    .line 16
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$ManuallyValueChanged;->resetManuallyParameters(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private getAlertStartGravityTipLayoutTopMargin()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/android/camera/display/Display;->getTopHeight()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070399

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getAlertTopMargin()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/display/Display;->getTipsMarginTop(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private getAlertTopMarginSupportDocument()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070777

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getDividerDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->OoooO()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0808ff

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0808fe

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getEndGravityTipDividerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0808fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getUiStyle(I)I
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/android/camera/CameraSettings;->isSubtitleEnabled(I)Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    .line 4
    :goto_0
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    if-nez v0, :cond_3

    const/16 v0, 0xb3

    if-eq p0, v0, :cond_3

    .line 6
    invoke-static {p0}, Lcom/android/camera/module/ModuleManager;->isLeftLandscapeMode(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    invoke-static {p0}, Lcom/android/camera/module/ModuleManager;->isBothLandscapeMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    const/16 v0, 0xa2

    if-ne p0, v0, :cond_5

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result v0

    if-eqz v0, :cond_5

    move v1, v2

    :cond_5
    const/16 v0, 0xcc

    if-ne p0, v0, :cond_6

    .line 9
    invoke-static {}, Lcom/android/camera/CameraSettings;->getDualVideoConfig()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;->ismDrawGridWindow()Z

    move-result v0

    if-eqz v0, :cond_7

    move v2, v3

    goto :goto_2

    :cond_6
    move v2, v1

    .line 10
    :cond_7
    :goto_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1x1"

    if-ne p0, v0, :cond_8

    const/4 v2, 0x4

    :cond_8
    return v2
.end method

.method private getVolumeControlTranslationRotation()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isFlipRotate()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mClickRectMoveDistance:F

    return v0

    .line 3
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mClickRectMoveDistance:F

    return v0
.end method

.method private getZoomRatioTipText(Z)Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result v0

    invoke-static {v0}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result v0

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v1

    .line 3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getActualOpenCameraId(II)I

    move-result v1

    .line 4
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v2

    invoke-virtual {v2}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OO0o()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isSupportCropFrontMode()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v3

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v2

    if-nez v4, :cond_11

    .line 6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result v4

    if-ne v1, v4, :cond_1

    return-object v3

    .line 7
    :cond_1
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getSATCameraId()I

    move-result v4

    if-ne v1, v4, :cond_2

    return-object v3

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehCameraId()I

    move-result v4

    if-ne v1, v4, :cond_3

    return-object v3

    .line 9
    :cond_3
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideBokehCameraId()I

    move-result v4

    if-ne v1, v4, :cond_4

    return-object v3

    .line 10
    :cond_4
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getFrontCameraId()I

    move-result v4

    if-ne v1, v4, :cond_5

    return-object v3

    .line 11
    :cond_5
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getBokehFrontCameraId()I

    move-result v4

    if-ne v1, v4, :cond_6

    return-object v3

    .line 12
    :cond_6
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getStandaloneMacroCameraId()I

    move-result v4

    if-ne v1, v4, :cond_7

    return-object v3

    .line 13
    :cond_7
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oOo0()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 14
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getVideoSATCameraId()I

    move-result v4

    if-ne v1, v4, :cond_8

    return-object v3

    .line 15
    :cond_8
    sget-boolean v4, Lcom/android/camera/HybridZoomingSystem;->IS_2_SAT:Z

    if-nez v4, :cond_9

    sget-boolean v4, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-nez v4, :cond_a

    .line 16
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedOpticalZoom()Z

    move-result v4

    if-nez v4, :cond_a

    .line 17
    :cond_9
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v4

    if-ne v1, v4, :cond_a

    return-object v3

    .line 18
    :cond_a
    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v5, 0xa7

    if-eq v4, v5, :cond_10

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_b

    goto :goto_0

    :cond_b
    const/16 v5, 0xa6

    if-ne v4, v5, :cond_c

    return-object v3

    :cond_c
    const/16 v5, 0xaf

    if-ne v4, v5, :cond_d

    return-object v3

    :cond_d
    const/16 v5, 0xb3

    if-ne v4, v5, :cond_e

    return-object v3

    .line 19
    :cond_e
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00o0Oo0()Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v5, 0xac

    if-ne v4, v5, :cond_f

    return-object v3

    .line 20
    :cond_f
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result v4

    if-ne v1, v4, :cond_11

    if-eqz p1, :cond_11

    sget p1, Lcom/android/camera/HybridZoomingSystem;->sDefaultMacroOpticalZoomRatio:F

    cmpl-float p1, p1, v2

    if-nez p1, :cond_11

    :cond_10
    :goto_0
    return-object v3

    .line 21
    :cond_11
    sget p1, Lcom/android/camera/HybridZoomingSystem;->FLOAT_ZOOM_RATIO_ULTR:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_13

    .line 22
    sget-boolean p1, Lcom/android/camera/HybridZoomingSystem;->IS_3_OR_MORE_SAT:Z

    if-eqz p1, :cond_12

    .line 23
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraWideCameraId()I

    move-result p1

    if-ne v1, p1, :cond_12

    return-object v3

    .line 24
    :cond_12
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getMainBackCameraId()I

    move-result p1

    if-ne v1, p1, :cond_13

    return-object v3

    .line 25
    :cond_13
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getAuxCameraId()I

    move-result p1

    if-ne v1, p1, :cond_14

    .line 26
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getTeleMinZoomRatio()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_14

    return-object v3

    .line 27
    :cond_14
    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getUltraTeleCameraId()I

    move-result p1

    if-ne v1, p1, :cond_15

    .line 28
    invoke-static {}, Lcom/android/camera/HybridZoomingSystem;->getUltraTeleMinZoomRatio()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_15

    return-object v3

    .line 29
    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "X"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleProVideoRecordingSimple(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o()V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x3ebd70a4    # 0.37f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f110047

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopAlert$22;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$22;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getProVideoRecordingSimpleRunning()Z

    move-result p1

    .line 8
    sget-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleProVideoRecordingSimple "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setProVideoRecordingSimpleRunning(Z)V

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb5

    .line 11
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    .line 12
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa2

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 13
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;

    const-string v3, ","

    const v4, 0x7f1200a3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_6

    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->forceUpdateManualView(Z)V

    :cond_0
    if-eqz v2, :cond_1

    .line 15
    invoke-interface {v2, v5}, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;->setZoomViewVisible(Z)V

    :cond_1
    if-eqz v1, :cond_2

    .line 16
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updatePauseAndCaptureView(Z)V

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    .line 18
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoAudioMapOpen(I)Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v6, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 20
    :cond_3
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v6, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 22
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 23
    iput-boolean v6, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoUltraClearTipVisibleBeforeProVideoSimple:Z

    .line 24
    new-instance p1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f12008f

    .line 26
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    .line 28
    invoke-interface {v0, v6}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->forceUpdateManualView(Z)V

    :cond_7
    if-eqz v2, :cond_8

    .line 29
    invoke-interface {v2, v6}, Lcom/android/camera/protocol/ModeProtocol$ZoomActive;->setZoomViewVisible(Z)V

    :cond_8
    if-eqz v1, :cond_9

    .line 30
    invoke-interface {v1, v6}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->updatePauseAndCaptureView(Z)V

    .line 31
    :cond_9
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoAudioMapOpen(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 32
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6, v6, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 33
    :cond_a
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 34
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v6, v6, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 35
    :cond_b
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->checkDependingVisible()V

    .line 36
    iget-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoUltraClearTipVisibleBeforeProVideoSimple:Z

    if-eqz p1, :cond_c

    .line 37
    iput-boolean v5, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoUltraClearTipVisibleBeforeProVideoSimple:Z

    .line 38
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 39
    :cond_c
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120041

    .line 40
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 42
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 43
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    :cond_d
    return-void
.end method

.method private initAiAudioBGTip()Lcom/android/camera/customization/BGTintTextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0025

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    return-object v0
.end method

.method private initAiAudioSingleBGTip()Lcom/android/camera/customization/BGTintTextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    return-object v0
.end method

.method private initAiEnhancedVideoTip()Lcom/android/camera/customization/BGTintTextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0026

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    return-object v0
.end method

.method private initCastVideoTip()Lcom/android/camera/customization/BGTintTextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d018b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    return-object v0
.end method

.method private initDocumentStateButton()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0037

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/MutiStateButton;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateButton:Lcom/android/camera/ui/MutiStateButton;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateMaps:Ljava/util/LinkedHashMap;

    const v1, 0x7f120354

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "raw"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateMaps:Ljava/util/LinkedHashMap;

    const v1, 0x7f120350

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bin"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateMaps:Ljava/util/LinkedHashMap;

    const v1, 0x7f120355

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateButton:Lcom/android/camera/ui/MutiStateButton;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateMaps:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/MutiStateButton;->initItems(Ljava/util/LinkedHashMap;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initDualVideoTip()Lcom/android/camera/customization/BGTintTextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d003a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    return-object v0
.end method

.method private initEndGravityTipLayout(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRotation()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    .line 4
    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLastEndGravityHeight:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLastEndGravityWidth:I

    if-ne v3, v1, :cond_0

    int-to-float v3, p1

    cmpl-float v0, v3, v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 6
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    const/16 v0, 0x12c

    invoke-virtual {p1, v0}, Lcom/android/camera/animation/type/BaseOnSubScribe;->setDurationTime(I)Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 7
    iput v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLastEndGravityHeight:I

    .line 8
    iput v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLastEndGravityWidth:I

    sub-int/2addr v1, v2

    .line 9
    div-int/lit8 v1, v1, 0x2

    .line 10
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result p1

    const v0, 0x800003

    const v2, 0x800005

    const v3, 0x7f070753

    const v4, 0x7f0706b6

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertTopMargin()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewTopMargin(Landroid/view/View;I)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/display/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewEndMargin(Landroid/view/View;I)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isFlipRotate()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertTopMargin()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewTopMargin(Landroid/view/View;I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/display/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewEndMargin(Landroid/view/View;I)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertTopMargin()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewTopMargin(Landroid/view/View;I)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/display/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewEndMargin(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method private initFastmotionProTip()Landroid/widget/LinearLayout;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initFastmotionTip()Landroid/widget/LinearLayout;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d004a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initHandGestureTip()Lcom/android/camera/customization/BGTintTextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ce

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    return-object v0
.end method

.method private initHandler()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initHorizonDirectTipText()Landroid/widget/TextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0182

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public static initLandscapeTopTipLayout(Landroid/view/View;II)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigRatio()Lcom/android/camera/data/data/config/ComponentConfigRatio;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/config/ComponentConfigRatio;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getUiStyle(I)I

    move-result v2

    .line 5
    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 6
    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRect(I)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const-string v4, "1x1"

    .line 7
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {}, Lcom/android/camera/display/Display;->getTopCoverHeight()I

    move-result v3

    .line 9
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 10
    invoke-static {p1}, Lcom/android/camera/Util;->getCinematicMargin(I)I

    move-result v1

    .line 11
    invoke-static {p1}, Lcom/android/camera/module/ModuleManager;->isBothLandscapeMode(I)Z

    move-result v2

    const/16 v3, 0xb6

    const v4, 0x7f0707a4

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    .line 12
    invoke-static {p2}, Lcom/android/camera/fragment/BaseFragment;->isLeftBothLandScape(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 16
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 17
    :cond_3
    invoke-static {p1}, Lcom/android/camera/module/ModuleManager;->isLeftLandscapeMode(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p2}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_4

    if-ne p1, v3, :cond_4

    goto :goto_0

    .line 18
    :cond_4
    invoke-static {p2}, Lcom/android/camera/fragment/BaseFragment;->isRightLandScape(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 20
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    .line 21
    :cond_5
    :goto_0
    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {}, Lcom/android/camera/display/Display;->getMarginEnd()I

    move-result v1

    add-int/2addr v2, v1

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 23
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-static {p1}, Lcom/android/camera/module/ModuleManager;->isBothLandscapeMode(I)Z

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    if-eqz v0, :cond_8

    .line 26
    invoke-static {p2}, Lcom/android/camera/fragment/BaseFragment;->isLeftBothLandScape(I)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    const/high16 v1, 0x43870000    # 270.0f

    :goto_2
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    goto :goto_4

    .line 27
    :cond_8
    invoke-static {p1}, Lcom/android/camera/module/ModuleManager;->isLeftLandscapeMode(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p2}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandScape(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_9

    if-ne p1, v3, :cond_9

    goto :goto_3

    :cond_9
    int-to-float p1, p2

    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    goto :goto_4

    .line 29
    :cond_a
    :goto_3
    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    :goto_4
    return-void
.end method

.method private initMacroModeTip()Lcom/android/camera/customization/BGTintTextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00dd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    return-object v0
.end method

.method private initMusicTipText()Landroid/widget/LinearLayout;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0183

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private initPermanentTip()Lcom/android/camera/customization/BGTintTextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0155

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    return-object v0
.end method

.method public static initPortraitTopTipLayout(Landroid/view/View;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/display/Display;->getTipsMarginTop(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 4
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 5
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 8
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getDividerDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x2

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    :cond_1
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private initProColourTip()Lcom/android/camera/customization/BGTintTextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0167

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    return-object v0
.end method

.method private initRecommendTipText()Landroid/widget/TextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0168

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private initSubtitleTip()Lcom/android/camera/customization/BGTintTextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0177

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    return-object v0
.end method

.method private initTimerBurstTip()Lcom/android/camera/customization/BGTintTextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d017d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    return-object v0
.end method

.method private initToastTipLayout()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setToastTipLayoutParams(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initToastTopTipImage()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initToastTopTipText()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initToastTopTipText()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSuperNightSeTip:Lcom/android/camera/customization/BGTintTextView;

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initCastVideoTip()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCastVideoTip:Lcom/android/camera/customization/BGTintTextView;

    return-void
.end method

.method private initToastTopTipImage()Landroid/widget/ImageView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d017f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private initToastTopTipText()Lcom/android/camera/customization/BGTintTextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0180

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/BGTintTextView;

    return-object v0
.end method

.method private initTopSlideSwitchButton()Lcom/android/camera/ui/TopAlertSlideSwitchButton;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0184

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    return-object v0
.end method

.method private initTopTipToggleSwitch()Lcom/android/camera/ui/ToggleSwitch;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0185

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ToggleSwitch;

    return-object v0
.end method

.method private initZoomTipText()Landroid/widget/TextView;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0197

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private quickEnterAutoHibernation()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa2

    if-eq v0, v1, :cond_0

    const/16 v1, 0xbb

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoRecording:Z

    if-nez v0, :cond_2

    :cond_1
    return-void

    .line 2
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->quickEnterAutoHibernation()V

    return-void
.end method

.method private removeViewToTipLayout(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;Z)V

    return-void
.end method

.method private removeViewToTipLayout(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_5

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    iget-boolean p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsAlertAnim:Z

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customStubViewTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eq p2, v0, :cond_3

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customStubViewTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 8
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 11
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->checkChildMargin()V

    :cond_5
    :goto_1
    return-void
.end method

.method private removeViewToToastLayout(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;Z)V

    return-void
.end method

.method private removeViewToToastLayout(Landroid/view/View;Z)V
    .locals 2

    if-eqz p1, :cond_8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_4

    .line 3
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsAlertAnim:Z

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    .line 5
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customToastLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eq v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setToastTipLayoutParams(Z)V

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customStubViewTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eq v0, v1, :cond_5

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customStubViewTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setToastTipLayoutParams(Z)V

    .line 10
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 11
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-gtz p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p2, :cond_6

    .line 14
    iget-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsAlertAnim:Z

    if-nez p1, :cond_7

    .line 15
    :cond_6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 16
    :cond_7
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->checkChildMargin()V

    :cond_8
    :goto_1
    return-void
.end method

.method public static setPendingRecordingState(I)V
    .locals 0

    .line 1
    sput p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->sPendingRecordingTimeState:I

    return-void
.end method

.method private setToastTipLayoutParams(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0808fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->customToastLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method private setViewEndMargin(Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setViewTopMargin(Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 3
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/display/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 4
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/display/Display;->getTopBarWidth(Landroid/content/Context;)I

    move-result v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p2, 0x0

    .line 6
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method private showCloseConfirm()V
    .locals 10

    .line 1
    sget-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showCloseConfirm"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isLiveRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v0, 0x7f12047a

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f12047b

    .line 6
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/camera/fragment/top/FragmentTopAlert$17;

    invoke-direct {v5, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$17;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v0, 0x7f120479

    .line 7
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOOOo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOOOo;

    .line 8
    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 9
    new-instance v1, Lcom/android/camera/fragment/top/FragmentTopAlert$18;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$18;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private showManualParameterResetDialog()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v0, 0x7f12030a

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f1208c8

    .line 4
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0oO;

    invoke-direct {v5, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0oO;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v0, 0x1040000

    .line 5
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget-object v9, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0O0;

    .line 6
    invoke-static/range {v1 .. v9}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 7
    new-instance v1, Lcom/android/camera/fragment/top/FragmentTopAlert$4;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$4;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private updateDocumentState(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateButton:Lcom/android/camera/ui/MutiStateButton;

    if-eqz v1, :cond_0

    .line 3
    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateButton:Lcom/android/camera/ui/MutiStateButton;

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/ui/MutiStateButton;->updateCurrentIndex(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private updateFlashForPhotoRecording(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xa3

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    if-ne v0, p1, :cond_4

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;ZI)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateTopHint(ILjava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertTopHintHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mPermanentTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mPermanentTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mPermanentTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mPermanentTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-lez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertTopHintHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mPermanentTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 10

    .line 3
    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isFastmotionModulePro()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0x3a4

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$FastmotionProAdjust;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$Expandable;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$FastmotionProAdjust;->resetManually()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->forceResetFastmotionProManually()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb5

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->resetManually()V

    .line 10
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFlashSupportedInManualMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xc1

    aput v3, v1, v2

    .line 12
    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    :cond_3
    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    .line 13
    invoke-virtual/range {v4 .. v9}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertParameterResetTip(ZIIIZ)V

    .line 14
    sget-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick trackManuallyResetDialogOk"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackManuallyResetDialogOk()V

    return-void
.end method

.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o([F)V
    .locals 3

    .line 19
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioMapMove:Lcom/android/camera/AudioMapMove;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 20
    aget v1, p1, v1

    float-to-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/AudioMapMove;->setValueHorizontal(FF)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0OO(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x8000

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0Oo(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->quickEnterAutoHibernation()V

    return-void
.end method

.method public synthetic OooO0o(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->handleProVideoRecordingSimple(Landroid/view/View;)V

    return-void
.end method

.method public synthetic OooO0o0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->showCloseConfirm()V

    return-void
.end method

.method public synthetic OooO0oO(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object p1, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string v0, "cameraAction.isDoingAction return"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateMaps:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v0, v1, p1}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 9
    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackDocumentModeChanged(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 10
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateDocumentState(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public alertAiAudio(IIZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 3
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioTip:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioTip:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 5
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioTip:Landroid/widget/TextView;

    invoke-static {p3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    const-wide/16 v0, 0x140

    invoke-virtual {p3, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioTip:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-nez p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioTip:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07076d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioTip:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioTip:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 10
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateEndGravityTip()V

    return-void
.end method

.method public alertAiAudioBGHint(II)V
    .locals 4

    if-nez p1, :cond_3

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioBGTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioBGTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioBGTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioBGTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioBGTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioBGTipHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioBGTipHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiAudioMutexToastIfNeed(I)V

    .line 10
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 11
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p2, v0, :cond_2

    .line 12
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v1

    .line 13
    :goto_1
    sget-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AiAudioNew.enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_4

    .line 14
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1208a5

    invoke-static {p1, p2, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    goto :goto_2

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioBGTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public alertAiAudioMutexToastIfNeed(I)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/Util;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    move p1, v0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f1209a2

    goto :goto_0

    :pswitch_1
    const p1, 0x7f1209a1

    :goto_0
    if-eq p1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f120765
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public alertAiAudioNewDescTip(Ljava/lang/String;IIJ)V
    .locals 3

    if-gtz p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "unknow"

    if-nez p2, :cond_2

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p2, :cond_3

    .line 6
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;)V

    const-wide/16 p2, 0x0

    cmp-long p2, p4, p2

    if-ltz p2, :cond_5

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    check-cast p2, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;

    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->setTipType(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 13
    :cond_4
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public alertAiAudioSingleBGHint(II)V
    .locals 4

    if-nez p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioSingleBGTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioSingleBGTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioSingleBGTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioSingleBGTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioSingleBGTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    .line 6
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 7
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move p2, v1

    .line 9
    :goto_1
    sget-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AiAudioSingle.enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", getMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    .line 10
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1208a8

    invoke-static {p1, p2, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;IZ)V

    goto :goto_2

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioSingleBGTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public alertAiAudioSingleDescTip(Ljava/lang/String;IIJ)V
    .locals 3

    if-gtz p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "unknow"

    if-nez p2, :cond_2

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p2, :cond_3

    .line 6
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;)V

    const-wide/16 p2, 0x0

    cmp-long p2, p4, p2

    if-ltz p2, :cond_5

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    check-cast p2, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;

    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->setTipType(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 13
    :cond_4
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public alertAiEnhancedVideoHint(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiEnhancedVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiEnhancedVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiEnhancedVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiEnhancedVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiEnhancedVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiEnhancedVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public alertAiSceneSelector(I)V
    .locals 7

    if-nez p1, :cond_0

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0oo;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0oo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120935

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120934

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    .line 4
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiSceneSelector(Ljava/lang/String;Ljava/lang/String;ILcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;Z)V

    return-void
.end method

.method public alertAudioMap(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioMapMove:Lcom/android/camera/AudioMapMove;

    const v0, 0x7f12062a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

    const v0, 0x7f120628

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->checkDependingVisible()V

    .line 6
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateEndGravityTip()V

    return-void
.end method

.method public alertCastVideoHint(II)V
    .locals 1

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCastVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCastVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCastVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCastVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCastVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz p2, :cond_0

    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 9
    :cond_0
    sget-object p1, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string p2, "camerapicker:alertcastVideoHint\uff1ashow"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mCastVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    sget-object p1, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string p2, "camerapicker:alertcastVideoHint\uff1agone"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public alertDocumentTip(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertAiDetectTipHitRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public alertDualVideoHint(IIZ)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDualVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDualVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDualVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDualVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDualVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDualVideoTipHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDualVideoTipHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDualVideoTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertESPFeatureTip(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoRecording:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result v0

    if-eqz p1, :cond_4

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f120687

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    const v0, 0x7f12008f

    goto :goto_1

    :cond_3
    const v0, 0x7f120041

    .line 6
    :goto_1
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz p1, :cond_5

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v0, 0x140

    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_2

    .line 12
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public alertFastmotionIndicator(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p5, :cond_1

    .line 2
    iget-object p5, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object p5, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    const/4 v0, 0x0

    invoke-static {p5, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 4
    iget-object p5, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    invoke-static {p5}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p5

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p5, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p5

    const-wide/16 v0, 0x140

    invoke-virtual {p5, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p5, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-nez p1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ui/FastmotionIndicatorView;->showFastmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateEndGravityTip()V

    return-void
.end method

.method public alertFastmotionProTip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeFastmotionTipResetRunnable()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTipTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p4, :cond_0

    .line 4
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    const/4 v7, 0x0

    const-string v4, ""

    move-object v3, p2

    move-object v5, p3

    move v6, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/camera/ui/FastmotionIndicatorView;->showFastmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 6
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTipSpeedDesc:Landroid/widget/TextView;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTipSaveTime:Landroid/widget/TextView;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTipSpeedDesc:Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTipSaveTime:Landroid/widget/TextView;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTipSpeedDesc:Landroid/widget/TextView;

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTipSaveTime:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :goto_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipContentDescription:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipAnnounceRunnable:Ljava/lang/Runnable;

    const-wide/16 p3, 0x1f4

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipToResetRunnable:Ljava/lang/Runnable;

    const-wide/16 p3, 0x3e8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTip:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTip:Landroid/widget/LinearLayout;

    .line 17
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTip:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;)V

    return-void
.end method

.method public alertFastmotionTip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeFastmotionTipResetRunnable()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipDesc:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipContentDescription:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipAnnounceRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipToResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTip:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTip:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTip:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;)V

    return-void
.end method

.method public alertFlash(ILjava/lang/String;)V
    .locals 6

    const/4 v0, 0x5

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_c

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/16 v4, 0x31

    const/4 v5, 0x0

    if-eq p1, v4, :cond_2

    const/16 v4, 0x32

    if-eq p1, v4, :cond_1

    const/16 v4, 0x35

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "5"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_1
    const-string p1, "2"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_2
    const-string p1, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v5

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    move v1, v3

    .line 2
    :goto_2
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    if-ne p1, v1, :cond_7

    return-void

    .line 3
    :cond_7
    iput v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0808f9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 5
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 6
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/camera/fragment/top/FragmentTopAlert$2;

    invoke-direct {p2, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$2;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    :cond_8
    if-eq v1, v3, :cond_b

    if-eq v1, v2, :cond_a

    if-eq v1, v0, :cond_9

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    goto :goto_3

    .line 10
    :cond_9
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    const p2, 0x7f0801e7

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    const p2, 0x7f12005e

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v3, v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;ZI)V

    goto :goto_3

    .line 13
    :cond_a
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    const p2, 0x7f0801e8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    const p2, 0x7f120062

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v3, v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;ZI)V

    goto :goto_3

    .line 16
    :cond_b
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    const p2, 0x7f0801e6

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    const p2, 0x7f120060

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v3, v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;ZI)V

    goto :goto_3

    .line 19
    :cond_c
    iget p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    if-eq p1, v2, :cond_d

    if-eq p1, v3, :cond_d

    if-eq p1, v0, :cond_d

    return-void

    .line 20
    :cond_d
    iput v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    .line 21
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    .line 22
    :goto_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 23
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result p2

    invoke-static {p1, p2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_e
    return-void
.end method

.method public alertHandGestureHint(I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandGestureTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandGestureTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandGestureTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandGestureTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandGestureTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    return-void
.end method

.method public alertHistogram(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    const v0, 0x7f1205d8

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->checkDependingVisible()V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateEndGravityTip()V

    return-void
.end method

.method public alertLightingTip(I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->parseLightingRes(I)I

    move-result p1

    const-wide/16 v0, -0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/16 v2, 0x8

    .line 2
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(IIJ)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(IIJ)V

    :goto_0
    return-void
.end method

.method public alertMacroModeHint(IIZ)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mMacroModeTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mMacroModeTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mMacroModeTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mMacroModeTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mMacroModeTipHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_1

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mMacroModeTipHideRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mMacroModeTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertMimojiFaceDetect(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mViewHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertMoonSelector(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 7

    if-nez p3, :cond_0

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOOO;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v6, p4

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAiSceneSelector(Ljava/lang/String;Ljava/lang/String;ILcom/android/camera/ui/ToggleSwitch$OnCheckedChangeListener;Z)V

    return-void
.end method

.method public alertMusicClose(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusicClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusicHintLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusicHintLayout:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertMusicTip(ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusiHintText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusicHintLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isLiveRecording()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertMusicClose(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusicHintLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertParameterDescriptionTip(IIZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoRecording:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    sget-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "camerapicker:alertParameterDescriptionTip\uff1avisible   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 5
    :cond_1
    sget-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string v1, "camerapicker:alertParameterDescriptionTip->DESCRIPTION_NORMAL:change imageView"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoCastIntent:Z

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07078e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    const v2, 0x7f08027a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    const v1, 0x7f08037c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    const v1, 0x7f08037d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 13
    :goto_0
    sget-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string v1, "camerapicker:alertParameterDescriptionTip->DESCRIPTION_FILTER:change imageView"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez p1, :cond_9

    if-nez p2, :cond_8

    .line 14
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0xbb

    if-ne p2, v0, :cond_4

    .line 15
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    const v0, 0x7f12013e

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    const/16 v0, 0xb4

    if-ne p2, v0, :cond_5

    .line 16
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    const v0, 0x7f1205cb

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    const/16 v0, 0xa9

    if-ne p2, v0, :cond_6

    .line 17
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    const v0, 0x7f12024b

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    const/16 v0, 0xab

    if-ne p2, v0, :cond_7

    .line 18
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    const v0, 0x7f120215

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 19
    :cond_7
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    const v0, 0x7f1205ca

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 20
    :cond_8
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    const v0, 0x7f12074a

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_9
    :goto_1
    const/4 p2, 0x0

    if-nez p1, :cond_a

    .line 21
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    .line 23
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, p2

    if-lez v0, :cond_a

    return-void

    :cond_a
    if-nez p1, :cond_b

    if-eqz p3, :cond_b

    .line 24
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 p2, 0x140

    invoke-virtual {p1, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_b
    return-void
.end method

.method public alertParameterResetTip(ZIIIZ)V
    .locals 2

    .line 1
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    invoke-virtual {p4}, Landroid/widget/ImageView;->getVisibility()I

    move-result p4

    if-eq p4, p2, :cond_2

    iget-boolean p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoRecording:Z

    if-eqz p4, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    if-eqz p5, :cond_1

    .line 2
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    const/4 p5, 0x0

    invoke-static {p4, p5}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 4
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    invoke-static {p4}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p4

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-virtual {p4, p5}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p4

    const-wide/16 v0, 0x140

    invoke-virtual {p4, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    invoke-virtual {p4, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-nez p2, :cond_2

    .line 6
    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_2

    .line 8
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackManuallyResetShow()V

    :cond_2
    :goto_1
    return-void
.end method

.method public alertProColourHint(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProColourTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProColourTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProColourTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProColourTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProColourTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProColourTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public alertRecommendDescTip(Ljava/lang/String;IIJ)V
    .locals 3

    if-gtz p3, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "unknow"

    if-nez p2, :cond_2

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p2, :cond_3

    .line 6
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;)V

    const-wide/16 p2, 0x0

    cmp-long p2, p4, p2

    if-ltz p2, :cond_5

    .line 10
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    check-cast p2, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;

    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->setTipType(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 13
    :cond_4
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public alertRecommendDescTip(Ljava/lang/String;ILjava/lang/String;J)V
    .locals 3

    .line 15
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "unknow"

    if-nez p2, :cond_2

    .line 17
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 18
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    .line 19
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p2, :cond_3

    .line 21
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    .line 22
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;)V

    const-wide/16 p2, 0x0

    cmp-long p2, p4, p2

    if-ltz p2, :cond_5

    .line 25
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    check-cast p2, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;

    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert$AlertRecommendDescRunable;->setTipType(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecommendDescRunable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return-void

    .line 28
    :cond_4
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    .line 29
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public alertRecommendTipHint(IIJ)V
    .locals 0

    if-gtz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertRecommendTipHint(ILjava/lang/String;J)V

    return-void
.end method

.method public alertRecommendTipHint(ILjava/lang/String;J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertAiDetectTipHitRunable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;)V

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-ltz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertAiDetectTipHitRunable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertSlideSwitchLayout(ZI)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xdd

    const/4 v3, 0x0

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    if-eq p2, v2, :cond_3

    const/16 v2, 0xde

    if-eq p2, v2, :cond_2

    const/16 v2, 0xe4

    if-eq p2, v2, :cond_1

    const/16 v1, 0xf6

    if-eq p2, v1, :cond_0

    :goto_0
    move v1, p1

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMoon()Lcom/android/camera/data/data/runing/ComponentRunningMoon;

    move-result-object v3

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v3

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDualVideo()Lcom/android/camera/data/data/runing/ComponentRunningDualVideo;

    move-result-object v3

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningDocument()Lcom/android/camera/data/data/runing/ComponentRunningDocument;

    move-result-object v3

    goto :goto_0

    .line 6
    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSlideSwitchButton:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-virtual {p1, p2}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setType(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSlideSwitchButton:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f060368

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setIndicatorColor(I)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSlideSwitchButton:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-virtual {p1, v3, p2, v1}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setComponentData(Lcom/android/camera/data/data/ComponentData;IZ)V

    .line 9
    new-instance v3, Lcom/android/camera/fragment/top/FragmentTopAlert$25;

    invoke-direct {v3, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$25;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShowSlideSwitchLayout:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShowSlideSwitchLayout:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-ne p2, v2, :cond_5

    .line 12
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSlideSwitchButton:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-direct {p0, p1, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;Z)V

    goto :goto_2

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSlideSwitchButton:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    .line 14
    :goto_2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSlideSwitchButton:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/TopAlertSlideSwitchButton;->setSlideSwitchListener(Lcom/android/camera/ui/TopAlertSlideSwitchButton$SlideSwitchListener;)V

    return-void
.end method

.method public alertSubtitleHint(II)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSubtitleTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSubtitleTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSubtitleTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSubtitleTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSubtitleTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSubtitleTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public alertSuperNightSeTip(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSuperNightSeTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSuperNightSeTip:Lcom/android/camera/customization/BGTintTextView;

    const v0, 0x7f120124

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSuperNightSeTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSuperNightSeTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSuperNightSeTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public alertSwitchTip(Ljava/lang/String;IILjava/lang/String;J)V
    .locals 6

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationToastTip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unknow"

    if-nez p2, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationToastTip:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationToastTip:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    .line 6
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x4

    if-lt v1, v4, :cond_2

    cmp-long v1, p5, v2

    if-lez v1, :cond_2

    return-void

    .line 7
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const-string p3, "hdr"

    .line 8
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 9
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    const v1, 0x7f120074

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10
    :cond_3
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 11
    :goto_0
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertAiSceneSwitchHintTime:J

    .line 13
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mViewHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_4

    .line 14
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationToastTip:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    goto :goto_1

    .line 16
    :cond_4
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationToastTip:Ljava/lang/String;

    .line 17
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    cmp-long p1, p5, v2

    if-lez p1, :cond_5

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mViewHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, p5, p6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public alertTimerBurstHint(IIZ)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTimerBurstTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTimerBurstTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTimerBurstTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTimerBurstTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTimerBurstTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToToastLayout(Landroid/view/View;)V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTimerBurstRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p3, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTimerBurstRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTimerBurstTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public alertTopHint(II)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTopHint(IIJ)V

    return-void
.end method

.method public alertTopHint(IIJ)V
    .locals 3

    const/16 v0, 0x8

    if-lez p2, :cond_0

    if-nez p1, :cond_0

    .line 6
    iput p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopHintTextResource:I

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopHintTextResource:I

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 8
    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopHintTextResource:I

    if-nez v2, :cond_2

    move p1, v0

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_1
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateTopHint(ILjava/lang/String;J)V

    return-void
.end method

.method public alertTopHint(ILjava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    :cond_0
    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateTopHint(ILjava/lang/String;J)V

    return-void
.end method

.method public alertTopHint(ILjava/lang/String;J)V
    .locals 1

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateTopHint(ILjava/lang/String;J)V

    return-void
.end method

.method public alertUpdateValue(IILjava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeZoomTipRestRunnable()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertZoom(Z)V

    .line 3
    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAudioZoomIndicator(Z)V

    return-void

    .line 4
    :cond_0
    sget-object v2, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alertUpdateValue: type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    :cond_1
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v3}, Lcom/android/camera/Util;->pixelToXxhdp(F)F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const-string v2, ""

    const/16 v3, 0x9

    if-ne p1, v3, :cond_4

    .line 10
    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v4

    .line 11
    invoke-direct {p0, v4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getZoomRatioTipText(Z)Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 13
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertZoom(Z)V

    goto :goto_0

    .line 14
    :cond_3
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 15
    :cond_4
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v4

    if-eqz v4, :cond_6

    if-lez p2, :cond_5

    .line 17
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    packed-switch p1, :pswitch_data_0

    .line 18
    iput-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto/16 :goto_1

    .line 19
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f120786

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto/16 :goto_1

    .line 20
    :pswitch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f120773

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto/16 :goto_1

    .line 21
    :pswitch_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f120675

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto/16 :goto_1

    .line 22
    :pswitch_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1205d6

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto/16 :goto_1

    .line 23
    :pswitch_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f1205d4

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto/16 :goto_1

    .line 24
    :pswitch_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f1205da

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto/16 :goto_1

    .line 25
    :pswitch_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f1205d0

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto/16 :goto_1

    .line 26
    :pswitch_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f1205ef

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto/16 :goto_1

    .line 27
    :pswitch_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f120622

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto :goto_1

    .line 28
    :pswitch_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f120417

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto :goto_1

    .line 29
    :pswitch_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const p3, 0x7f12065d

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    goto :goto_1

    .line 30
    :pswitch_b
    iget p2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getRetainZoom(I)F

    move-result p2

    invoke-static {p2}, Lcom/android/camera/HybridZoomingSystem;->toDecimal(F)F

    move-result p2

    const p3, 0x7f12006c

    new-array v2, v0, [Ljava/lang/Object;

    .line 31
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {p0, p3, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    .line 32
    :goto_1
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    if-eq p1, v0, :cond_6

    .line 33
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p2, p3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    if-eq p1, v3, :cond_7

    .line 34
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipToResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 35
    :cond_7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_8

    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    .line 37
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAudioZoomIndicator(Z)V

    return-void

    .line 38
    :cond_8
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_9

    .line 39
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;)V

    .line 40
    :cond_9
    invoke-direct {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAudioZoomIndicator(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public alertVideoUltraClear(IIZ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertVideoUltraClear(ILjava/lang/String;Z)V

    return-void
.end method

.method public alertVideoUltraClear(ILjava/lang/String;Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 4
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 6
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    invoke-static {p3}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p3, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    const-wide/16 v0, 0x140

    invoke-virtual {p3, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-nez p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    const/4 p3, 0x0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07076d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, p3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 11
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateEndGravityTip()V

    return-void
.end method

.method public alertVolumeControlAnimationView(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateEndGravityTip()V

    return-void
.end method

.method public clear(Z)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeZoomTipRestRunnable()V

    .line 2
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clearAlertStatus()V

    if-eqz p1, :cond_1

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xac

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->clearAllTipsState()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clearHandlerCallbacks()V

    :cond_1
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertImageType:I

    .line 8
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_5

    .line 10
    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 11
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    if-eqz v6, :cond_3

    .line 12
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_3

    check-cast v6, Ljava/lang/Integer;

    .line 13
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    .line 14
    :cond_2
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p1, :cond_4

    .line 15
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 17
    iget-object v5, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 18
    :cond_6
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-gtz v1, :cond_7

    .line 19
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 20
    invoke-direct {p0, v4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setToastTipLayoutParams(Z)V

    .line 21
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 23
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    move v6, v3

    :goto_2
    if-ge v6, v1, :cond_9

    .line 24
    iget-object v7, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v6, :cond_8

    .line 25
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 26
    :cond_8
    invoke-direct {p0, v4}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setToastTipLayoutParams(Z)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 27
    :cond_9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 28
    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 29
    :cond_a
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clearVideoUltraClear()V

    if-eqz p1, :cond_b

    .line 30
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_b

    .line 31
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_b
    if-eqz p1, :cond_c

    .line 32
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_c

    .line 33
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    sget-object v1, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string v2, "camerapicker:clear\uff1aGONE"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_c
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v5, :cond_d

    .line 36
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_d
    if-eqz p1, :cond_e

    .line 37
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    :cond_e
    if-eqz p1, :cond_f

    .line 38
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v3, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    :cond_f
    const-string/jumbo p1, "unknow"

    .line 39
    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationToastTip:Ljava/lang/String;

    return-void
.end method

.method public clearAlertStatus()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeZoomTipRestRunnable()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    return-void
.end method

.method public clearFastmotionTip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTip:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;Z)V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTip:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;Z)V

    return-void
.end method

.method public clearVideoUltraClear()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateEndGravityTip()V

    return-void
.end method

.method public containShortDurationDescriptionTips(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationDescriptionTip:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAudioMapVisibilityState()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioMapMove:Lcom/android/camera/AudioMapMove;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFragmentInto()I
    .locals 1

    const/16 v0, 0xfd

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d00b3

    return v0
.end method

.method public getVideoTag()Lcom/android/camera/ui/VideoTagView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoTagView:Lcom/android/camera/ui/VideoTagView;

    return-object v0
.end method

.method public getVideoTagContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoTagStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeControlPanel()Lcom/android/camera/VolumeControlPanel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

    return-object v0
.end method

.method public hideRecommendDescTip(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->containShortDurationDescriptionTips(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public hideRecordingTime()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoRecording:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoCastIntent:Z

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoCastIntent:Z

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShow()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    .line 6
    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLlAlertRecordingTimeView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 9
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public hideSwitchTip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToToastLayout(Landroid/view/View;)V

    const-string/jumbo v0, "unknow"

    .line 2
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationToastTip:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mViewHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initHandler()V

    const v0, 0x7f0a0225

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLlAlertRecordingTimeView:Landroid/widget/LinearLayout;

    .line 3
    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0052

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const v0, 0x7f0a0171

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProAlertRecordingText:Landroid/widget/TextView;

    const v0, 0x7f0a0050

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextNumerator:Landroid/widget/TextView;

    const v0, 0x7f0a0051

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextDenominator:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLlAlertRecordingTimeView:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 10
    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 11
    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 12
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLlAlertRecordingTimeView:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewTopMargin(Landroid/view/View;I)V

    .line 13
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextNumerator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextDenominator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    new-instance v0, Lcom/android/camera/ui/VideoTagView;

    invoke-direct {v0}, Lcom/android/camera/ui/VideoTagView;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoTagView:Lcom/android/camera/ui/VideoTagView;

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoTagStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/camera/ui/VideoTagView;->init(Landroid/view/View;Landroid/content/Context;Ljava/lang/StringBuilder;)V

    const v0, 0x7f0a047a

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    const v0, 0x7f0a016f

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FastmotionIndicatorView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    const v0, 0x7f0a0049

    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioTip:Landroid/widget/TextView;

    const v0, 0x7f0a014b

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    .line 23
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getEndGravityTipDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    .line 25
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertTopMargin()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewTopMargin(Landroid/view/View;I)V

    const v0, 0x7f0a03b8

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mStartGravityTipLayout:Landroid/widget/LinearLayout;

    .line 27
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getAlertStartGravityTipLayoutTopMargin()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setViewTopMargin(Landroid/view/View;I)V

    const v0, 0x7f0a014d

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    .line 29
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0343

    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    .line 31
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0269

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    .line 33
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 34
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint([Landroid/view/View;)V

    .line 35
    sget v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->sPendingRecordingTimeState:I

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, v0, v3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setRecordingTimeState(IZ)V

    .line 37
    invoke-static {v3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setPendingRecordingState(I)V

    :cond_0
    const v0, 0x7f0a0404

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    .line 39
    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initPortraitTopTipLayout(Landroid/view/View;)V

    .line 40
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0405

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    .line 41
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initToastTipLayout()V

    .line 42
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initTopTipToggleSwitch()Lcom/android/camera/ui/ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    .line 43
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initTopSlideSwitchButton()Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSlideSwitchButton:Lcom/android/camera/ui/TopAlertSlideSwitchButton;

    .line 44
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initRecommendTipText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    .line 45
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initZoomTipText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    .line 46
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initMusicTipText()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusicHintLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a020c

    .line 47
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusiHintText:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusicHintLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f0a020a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusicClose:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusicHintLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLiveMusicHintLayout:Landroid/widget/LinearLayout;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOO0o;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOO0o;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initPermanentTip()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mPermanentTip:Lcom/android/camera/customization/BGTintTextView;

    .line 52
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initSubtitleTip()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSubtitleTip:Lcom/android/camera/customization/BGTintTextView;

    .line 53
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initProColourTip()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProColourTip:Lcom/android/camera/customization/BGTintTextView;

    .line 54
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initHorizonDirectTipText()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLyingDirectHintText:Landroid/widget/TextView;

    .line 55
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initMacroModeTip()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mMacroModeTip:Lcom/android/camera/customization/BGTintTextView;

    .line 56
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initDualVideoTip()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDualVideoTip:Lcom/android/camera/customization/BGTintTextView;

    .line 57
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initTimerBurstTip()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTimerBurstTip:Lcom/android/camera/customization/BGTintTextView;

    .line 58
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initAiAudioBGTip()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioBGTip:Lcom/android/camera/customization/BGTintTextView;

    .line 59
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initAiAudioSingleBGTip()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiAudioSingleBGTip:Lcom/android/camera/customization/BGTintTextView;

    .line 60
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initAiEnhancedVideoTip()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiEnhancedVideoTip:Lcom/android/camera/customization/BGTintTextView;

    .line 61
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initHandGestureTip()Lcom/android/camera/customization/BGTintTextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandGestureTip:Lcom/android/camera/customization/BGTintTextView;

    const v0, 0x7f0a0069

    .line 62
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/AudioMapMove;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioMapMove:Lcom/android/camera/AudioMapMove;

    .line 63
    invoke-virtual {v0, p0}, Lcom/android/camera/AudioMapMove;->setOnAudioMapPressAnimatorListener(Lcom/android/camera/AudioMapMove$OnAudioMapPressAnimatorListener;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioMapMove:Lcom/android/camera/AudioMapMove;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a006a

    .line 65
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutAudioMap:Landroid/widget/FrameLayout;

    const v0, 0x7f0a01b5

    .line 66
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    const v0, 0x7f0a032f

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    .line 68
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const v0, 0x7f0a0488

    .line 70
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/VolumeControlPanel;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

    .line 71
    invoke-virtual {v0, p0}, Lcom/android/camera/VolumeControlPanel;->setOnVolumeControlListener(Lcom/android/camera/VolumeControlPanel$OnVolumeControlListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

    invoke-virtual {v0, p0}, Lcom/android/camera/VolumeControlPanel;->setOnVolumePressAnimatorListener(Lcom/android/camera/VolumeControlPanel$OnVolumePressAnimatorListener;)V

    .line 73
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

    invoke-virtual {v0}, Lcom/android/camera/VolumeControlPanel;->setVolumeControlBackGround()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0707a7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mClickRectMoveDistance:F

    const v0, 0x7f0a0346

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HistogramView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHistogramView:Lcom/android/camera/ui/HistogramView;

    .line 76
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initFastmotionTip()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTip:Landroid/widget/LinearLayout;

    const v2, 0x7f0a017b

    .line 77
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipTitle:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTip:Landroid/widget/LinearLayout;

    const v2, 0x7f0a017a

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipDesc:Landroid/widget/TextView;

    const-string v0, "mipro-regular"

    .line 79
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 80
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const-string v0, "mipro-medium"

    .line 81
    invoke-static {v0, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 82
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipDesc:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initFastmotionProTip()Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTip:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0178

    .line 84
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTipTitle:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTip:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0175

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/FastmotionIndicatorView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProIndicatorView:Lcom/android/camera/ui/FastmotionIndicatorView;

    .line 86
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTip:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0177

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTipSpeedDesc:Landroid/widget/TextView;

    .line 87
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTip:Landroid/widget/LinearLayout;

    const v2, 0x7f0a0176

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProTipSaveTime:Landroid/widget/TextView;

    const v0, 0x7f0a032e

    .line 88
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a0489

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 90
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    .line 91
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 92
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07069c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 94
    invoke-static {}, Lcom/android/camera/display/Display;->getTopMargin()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getTopBarHeight()I

    move-result v3

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v3, v2

    div-int/2addr v3, v1

    add-int/2addr v0, v3

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 96
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOOO0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOOO0;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isVideoCastIntent()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoCastIntent:Z

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0029

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomLayout:Landroid/view/View;

    const v0, 0x7f0a006b

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioZoomHorn:Landroid/widget/ImageView;

    .line 100
    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 101
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-virtual {p0, v1, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->provideRotateItem(Ljava/util/List;I)V

    return-void
.end method

.method public varargs isContainAlertRecommendTip([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 2
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_4

    .line 3
    array-length v0, p1

    if-gtz v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget v3, p1, v2

    if-gtz v3, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return v1
.end method

.method public isCurrentRecommendTipText(I)Z
    .locals 2

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->isShowTopLayoutSpecifyTip(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 4
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRecommendTip:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public isFlashShowing()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationToastTip:Ljava/lang/String;

    const-string v2, "flash"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public isHDRShowing()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTipFlash:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShortDurationToastTip:Ljava/lang/String;

    const-string v2, "hdr"

    if-eq v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastSwitchTip:Lcom/android/camera/customization/BGTintTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public isLiveRecording()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecording()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isRecordingPaused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShow:Z

    return v0
.end method

.method public isShowBacklightSelector()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120935

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/camera/ui/ToggleSwitch;->getTextOn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isShowMoonSelector()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120125

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAiSceneSelectView:Lcom/android/camera/ui/ToggleSwitch;

    invoke-virtual {v2}, Lcom/android/camera/ui/ToggleSwitch;->getTextOn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isShowTopLayoutSpecifyTip(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public isZoomTipShowing()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTip:Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public notifyAfterFrameAvailable(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->notifyAfterFrameAvailable(I)V

    .line 2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProPhotoHistogramOpen(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 4
    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoAudioMapOpen(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    const/16 p1, 0x8

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setVolumeControlPanelGone(I)V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertAudioMap(I)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertVolumeControlAnimationView(I)V

    .line 9
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->checkDependingVisible()V

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mToastTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 4
    instance-of p3, p2, Lcom/android/camera/customization/BGTintTextView;

    if-eqz p3, :cond_0

    .line 5
    check-cast p2, Lcom/android/camera/customization/BGTintTextView;

    .line 6
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/camera/customization/BGTintTextView;->setBGColor(I)V

    .line 7
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 8
    :cond_0
    instance-of p3, p2, Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    .line 9
    check-cast p2, Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertTintColor()I

    move-result v0

    invoke-static {p3, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 12
    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 13
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alterTextColor()I

    move-result p3

    invoke-static {p2, p3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 15
    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object p2

    const p3, 0x7f0600da

    invoke-virtual {p2, p3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa1

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    sget-object p1, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string v0, "cameraAction.isDoingAction return"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/16 v2, 0xa4

    const/4 v3, 0x0

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_2

    .line 7
    :sswitch_0
    sget-object p1, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick reset_manually_parameter_tip"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {}, Lcom/android/camera/statistic/CameraStatUtils;->trackManuallyResetClick()V

    .line 9
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->showManualParameterResetDialog()V

    goto/16 :goto_2

    .line 10
    :sswitch_1
    sget-object v1, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    .line 11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const-string/jumbo v6, "onClick manually_parameter_description_tip: currentMode=0x%x"

    .line 12
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget-boolean v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoCastIntent:Z

    if-eqz v1, :cond_6

    .line 14
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 15
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz v1, :cond_3

    .line 16
    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v4, 0xb8

    if-ne v2, v4, :cond_3

    .line 17
    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->showMimojiPanel(I)Z

    .line 18
    :cond_3
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 19
    :cond_4
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xb7

    .line 20
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraSwitcher;

    if-eqz v0, :cond_5

    .line 21
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$CameraSwitcher;->changeCamera(Landroid/view/View;)V

    :cond_5
    return-void

    .line 22
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xab

    const/16 v2, 0xa9

    const/16 v3, 0xbb

    if-nez v0, :cond_a

    .line 23
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v0, v3, :cond_7

    .line 24
    sget-object v0, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    const-string v4, "ambilight_user_guide"

    goto :goto_0

    :cond_7
    if-ne v0, v2, :cond_8

    .line 25
    sget-object v0, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    const-string v4, "fastmotion_user_guide"

    goto :goto_0

    :cond_8
    if-ne v0, v1, :cond_9

    .line 26
    sget-object v0, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    const-string v4, "beautyLens_user_guide"

    goto :goto_0

    .line 27
    :cond_9
    sget-object v0, Lcom/android/camera/fragment/manually/FragmentParameterDescription;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "parameter_user_guide"

    goto :goto_0

    .line 28
    :cond_a
    sget-object v0, Lcom/android/camera/fragment/FragmentDescription;->TAG:Ljava/lang/String;

    const-string v4, "masterfilter_user_guide"

    .line 29
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/camera/fragment/FragmentUtils;->getFragmentByTag(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_f

    const-string v5, "attr_user_guide"

    const-string v6, "click"

    .line 30
    invoke-static {v5, v4, v6}, Lcom/android/camera/statistic/MistatsWrapper;->commonKeyTriggerEvent(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_e

    .line 32
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne p1, v3, :cond_b

    .line 33
    new-instance p1, Lcom/android/camera/fragment/manually/FragmentAmbilightDescription;

    invoke-direct {p1}, Lcom/android/camera/fragment/manually/FragmentAmbilightDescription;-><init>()V

    const-string v1, "attr_ambilight_about_button_click"

    .line 34
    invoke-static {v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackAmbilightClick(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    if-ne p1, v2, :cond_c

    .line 35
    new-instance p1, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;

    invoke-direct {p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotionDescription;-><init>()V

    goto :goto_1

    :cond_c
    if-ne p1, v1, :cond_d

    .line 36
    new-instance p1, Lcom/android/camera/fragment/FragmentBeautyLensDescription;

    invoke-direct {p1}, Lcom/android/camera/fragment/FragmentBeautyLensDescription;-><init>()V

    goto :goto_1

    .line 37
    :cond_d
    new-instance p1, Lcom/android/camera/fragment/manually/FragmentParameterDescription;

    invoke-direct {p1}, Lcom/android/camera/fragment/manually/FragmentParameterDescription;-><init>()V

    goto :goto_1

    .line 38
    :cond_e
    new-instance p1, Lcom/android/camera/fragment/FragmentMasterFilterDescription;

    invoke-direct {p1}, Lcom/android/camera/fragment/FragmentMasterFilterDescription;-><init>()V

    :goto_1
    const/4 v1, 0x2

    const v2, 0x7f1300c7

    .line 39
    invoke-virtual {p1, v1, v2}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 41
    invoke-virtual {v1, p1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_2

    .line 43
    :sswitch_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    if-eqz p1, :cond_f

    const/16 v0, 0xb5

    .line 44
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->onConfigChanged(I)V

    goto :goto_2

    .line 45
    :sswitch_3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioMapMove:Lcom/android/camera/AudioMapMove;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 46
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 48
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0069 -> :sswitch_3
        0x7f0a014d -> :sswitch_2
        0x7f0a0269 -> :sswitch_1
        0x7f0a0343 -> :sswitch_0
    .end sparse-switch
.end method

.method public onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStart()V

    .line 2
    sget-object v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->showRecordingTime()V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clear(Z)V

    .line 3
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 7
    iput-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 12
    iput-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    .line 13
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const/16 v2, 0x8

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProAlertRecordingText:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :cond_5
    iput-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsAlertAnim:Z

    .line 18
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextNumerator:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    :cond_6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextDenominator:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public parseLightingRes(I)I
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f120457

    goto :goto_0

    :cond_1
    const p1, 0x7f12045a

    goto :goto_0

    :cond_2
    const p1, 0x7f120459

    :goto_0
    return p1
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsAlertAnim:Z

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    sget-object v3, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "provideAnimateElement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    if-ne p3, v3, :cond_1

    .line 4
    iput-boolean v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoRecording:Z

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 6
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextDenominator:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextNumerator:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_1
    iget-boolean v4, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoRecording:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    .line 11
    :cond_2
    invoke-virtual {p0, v3, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setRecordingTimeState(IZ)V

    .line 12
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->clear(Z)V

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setShow(Z)V

    .line 15
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateEndGravityTip()V

    .line 16
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateTopAlertLayout()V

    .line 17
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 p3, -0x1

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_4

    .line 18
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    .line 19
    :cond_4
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa7

    if-eq p1, v0, :cond_5

    .line 20
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p3, p2, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(ILjava/util/List;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 2
    invoke-direct {p0, p2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initEndGravityTipLayout(I)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 8
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 9
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateTopAlertLayout()V

    return-void
.end method

.method public putVolumeControlValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlValue:F

    return-void
.end method

.method public refreshHistogramStatsView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHistogramView:Lcom/android/camera/ui/HistogramView;

    invoke-virtual {v0}, Lcom/android/camera/ui/HistogramView;->refresh()V

    :cond_0
    return-void
.end method

.method public removeFastmotionTipResetRunnable()V
    .locals 2

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipContentDescription:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipAnnounceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionTipToResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeHandlerCallBack()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removePostDelayedTime()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeZoomTipRestRunnable()V
    .locals 2

    const-string v0, ""

    .line 1
    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipContentDescription:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipAnnounceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mZoomTipToResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAlertAnim(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsAlertAnim:Z

    return-void
.end method

.method public setAudioMapMoveVolumeValue([F)V
    .locals 2

    .line 1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0OO;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0OO;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;[F)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public setAudioMapVisibility(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioMapMove:Lcom/android/camera/AudioMapMove;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioMapMove:Lcom/android/camera/AudioMapMove;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setPostDelayedTime()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setPressAnimatorX()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutAudioMap:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string/jumbo v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAnimator1:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/camera/fragment/top/FragmentTopAlert$19;

    invoke-direct {v4, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$19;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAnimator1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutAudioMap:Landroid/widget/FrameLayout;

    new-array v1, v1, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v1, v4

    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->getVolumeControlTranslationRotation()F

    move-result v4

    const/4 v5, 0x1

    aput v4, v1, v5

    const-string/jumbo v4, "translationX"

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    new-instance v1, Lcom/android/camera/fragment/top/FragmentTopAlert$20;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$20;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 8
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3fc51eb8    # 1.54f
    .end array-data
.end method

.method public setPressAnimatorY()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutAudioMap:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string/jumbo v2, "scaleY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAnimator1:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/camera/fragment/top/FragmentTopAlert$21;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/top/FragmentTopAlert$21;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAnimator1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public setPressAudioMapMoveAnimator(Lcom/android/camera/VolumeControlPanel;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const v2, 0x3f7d70a4    # 0.99f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2
    new-instance v1, Lmiuix/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v1, 0x12c

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioMapMove:Lcom/android/camera/AudioMapMove;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setPressAudioMapPressAnimator()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->is3DAudioOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setPressAudioMapMoveAnimator(Lcom/android/camera/VolumeControlPanel;)V

    .line 5
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removePostDelayedTime()V

    :cond_1
    return-void
.end method

.method public setRecordingTimeState(IZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    sget-object v2, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setRecordingTimeState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "   mCurrentMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xd0

    const/16 v3, 0xbb

    const/16 v4, 0xb4

    const v5, 0x7f1209c1

    const/16 v6, 0xa9

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-eq v1, v8, :cond_11

    const/4 v8, 0x0

    const/4 v11, 0x2

    if-eq v1, v11, :cond_5

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    if-eq v1, v7, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget-boolean v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoCastIntent:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0, v9, v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertCastVideoHint(II)V

    .line 4
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    sget-object v1, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string v2, "camerapicker:setRecordingTimeState:videocast-resume\uff1agone"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_1
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_23

    .line 7
    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    goto/16 :goto_7

    .line 8
    :cond_2
    iget-boolean v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoCastIntent:Z

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {v0, v10, v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertCastVideoHint(II)V

    .line 10
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 11
    sget-object v1, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string v2, "camerapicker:setRecordingTimeState:videocast-stop\uff1ashow"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_3
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v1, :cond_4

    .line 13
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x190

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 15
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 16
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 17
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v11}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 18
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 19
    :cond_4
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_7

    .line 20
    :cond_5
    iput-boolean v10, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoRecording:Z

    .line 21
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLlAlertRecordingTimeView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextNumerator:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 23
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextDenominator:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 24
    iget-boolean v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoCastIntent:Z

    if-eqz v1, :cond_6

    .line 25
    invoke-virtual {v0, v9, v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertCastVideoHint(II)V

    .line 26
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 27
    sget-object v1, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string v5, "camerapicker:setRecordingTimeState:videocast-stop\uff1agone"

    invoke-static {v1, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_6
    iget-boolean v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsESPFeatureTipVisibleBeforeRecording:Z

    if-eqz v1, :cond_7

    .line 29
    iput-boolean v10, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsESPFeatureTipVisibleBeforeRecording:Z

    .line 30
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    :cond_7
    iget v1, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v1, v4, :cond_9

    if-ne v1, v6, :cond_8

    .line 32
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    .line 33
    :cond_8
    iget v1, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v1, v3, :cond_b

    .line 34
    iget-boolean v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsParameterDescriptionVisibleBeforeRecording:Z

    if-eqz v1, :cond_b

    .line 35
    iput-boolean v10, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsParameterDescriptionVisibleBeforeRecording:Z

    .line 36
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 37
    :cond_9
    :goto_0
    iget-boolean v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsParameterResetVisibleBeforeRecording:Z

    if-eqz v1, :cond_a

    .line 38
    iput-boolean v10, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsParameterResetVisibleBeforeRecording:Z

    .line 39
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :cond_a
    iget-boolean v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsParameterDescriptionVisibleBeforeRecording:Z

    if-eqz v1, :cond_b

    .line 41
    iput-boolean v10, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsParameterDescriptionVisibleBeforeRecording:Z

    .line 42
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 43
    :cond_b
    :goto_1
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v1, :cond_c

    .line 44
    invoke-virtual {v1}, Landroid/view/animation/AlphaAnimation;->cancel()V

    .line 45
    :cond_c
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    .line 46
    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v8

    if-eqz v1, :cond_d

    .line 47
    new-instance v1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_2

    .line 48
    :cond_d
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 49
    :goto_2
    iget v1, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v1, v6, :cond_e

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v1

    if-nez v1, :cond_f

    :cond_e
    iget v1, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v1, v2, :cond_10

    .line 50
    :cond_f
    new-instance v1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProAlertRecordingText:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/camera/animation/type/BaseOnSubScribe;->targetGone()Lcom/android/camera/animation/type/BaseOnSubScribe;

    move-result-object v1

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 51
    :cond_10
    invoke-direct {v0, v10}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateFlashForPhotoRecording(Z)V

    goto/16 :goto_7

    .line 52
    :cond_11
    iput-boolean v8, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoRecording:Z

    .line 53
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLlAlertRecordingTimeView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 54
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/extra/DataItemLive;->getTimerBurstController()Lcom/android/camera/timerburst/TimerBurstController;

    move-result-object v1

    .line 55
    iget v11, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v12, 0xa7

    const-string v13, "00:00"

    const-string v14, "/"

    if-eq v11, v12, :cond_1e

    if-eq v11, v6, :cond_17

    const/16 v12, 0xac

    if-eq v11, v12, :cond_17

    if-eq v11, v4, :cond_17

    if-eq v11, v3, :cond_17

    const/16 v12, 0xb7

    if-eq v11, v12, :cond_16

    const/16 v12, 0xb8

    const-string v15, "00:15"

    if-eq v11, v12, :cond_14

    const/16 v12, 0xcf

    if-eq v11, v12, :cond_17

    if-eq v11, v2, :cond_17

    packed-switch v11, :pswitch_data_0

    packed-switch v11, :pswitch_data_1

    goto/16 :goto_6

    .line 56
    :pswitch_0
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const-string v4, "00:10"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 57
    :pswitch_1
    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 58
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextNumerator:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v3

    .line 62
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextNumerator:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->getCaptureIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextNumerator:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v5

    const v9, 0x7f060328

    invoke-virtual {v5, v9}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextDenominator:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextDenominator:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v5

    const v9, 0x7f060326

    invoke-virtual {v5, v9}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextDenominator:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 67
    :cond_12
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_13

    .line 68
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    iput-boolean v8, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsESPFeatureTipVisibleBeforeRecording:Z

    .line 70
    :cond_13
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    invoke-direct {v0, v8}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateFlashForPhotoRecording(Z)V

    goto/16 :goto_6

    .line 72
    :cond_14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v3

    const-class v4, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v3, v4}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->isInMimojiGif()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 73
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const-string v4, "00:05"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 74
    :cond_15
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 75
    :cond_16
    :pswitch_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v3

    .line 76
    invoke-virtual {v3}, Lcom/android/camera/data/data/extra/DataItemLive;->getComponentLiveDuration()Lcom/android/camera/data/data/config/ComponentLiveDuration;

    move-result-object v3

    iget v4, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentLiveDuration;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4, v10}, Lcom/android/camera/Util;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v3

    .line 78
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 79
    :cond_17
    :pswitch_3
    iget v10, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq v10, v4, :cond_1a

    if-ne v10, v6, :cond_18

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo0()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 80
    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v4

    invoke-virtual {v4}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v4

    if-eqz v4, :cond_18

    goto :goto_3

    .line 81
    :cond_18
    iget v4, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v4, v3, :cond_1c

    .line 82
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    const-string v4, "monospace"

    invoke-static {v4, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 83
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_19

    .line 84
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    iput-boolean v8, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsParameterDescriptionVisibleBeforeRecording:Z

    .line 86
    sget-object v3, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string v4, "camerapicker: setRecordingTimeState->MODE_PRO_AMBILIGHT:camerapicker gone"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_19
    sget-object v3, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string v4, "camerapicker: setRecordingTimeState->MODE_FAST_MOTION:camerapicker gone"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 88
    :cond_1a
    :goto_3
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1b

    .line 89
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterResetTip:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iput-boolean v8, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsParameterResetVisibleBeforeRecording:Z

    .line 91
    :cond_1b
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1c

    .line 92
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    sget-object v3, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string v4, "camerapicker: setRecordingTimeState->MODE_PRO_VIDEO:camerapicker gone"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-boolean v8, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsParameterDescriptionVisibleBeforeRecording:Z

    :cond_1c
    :goto_4
    if-eqz p2, :cond_1d

    .line 95
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 97
    :cond_1d
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    :goto_5
    iget-boolean v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoCastIntent:Z

    if-eqz v3, :cond_1f

    .line 99
    invoke-virtual {v0, v9, v5}, Lcom/android/camera/fragment/top/FragmentTopAlert;->alertCastVideoHint(II)V

    .line 100
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mManualParameterDescriptionTip:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    sget-object v3, Lcom/android/camera/fragment/top/FragmentTopAlert;->TAG:Ljava/lang/String;

    const-string v4, "camerapicker:setRecordingTimeState:videocast\uff1acamerapicker gone"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 102
    :cond_1e
    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 103
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextNumerator:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    invoke-static {}, Lcom/android/camera/CameraSettings;->getTimerBurstTotalCount()I

    move-result v3

    .line 107
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextNumerator:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->getCaptureIndex()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextDenominator:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextDenominator:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f06035f

    .line 110
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 111
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v4, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingTextDenominator:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :cond_1f
    :goto_6
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_20

    .line 114
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mESPFeatureTip:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    iput-boolean v8, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsESPFeatureTipVisibleBeforeRecording:Z

    .line 116
    :cond_20
    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProAlertRecordingText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p2, :cond_23

    .line 117
    invoke-virtual {v1}, Lcom/android/camera/timerburst/TimerBurstController;->isInTimerBurstShotting()Z

    move-result v1

    if-nez v1, :cond_23

    .line 118
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v3, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-direct {v1, v3}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 119
    iget v1, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v1, v6, :cond_21

    invoke-static {}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o0O0oooO()LOooO00o/OooO0Oo/OooO00o/OooO0O0;

    move-result-object v1

    invoke-virtual {v1}, LOooO00o/OooO0Oo/OooO00o/OooO0O0;->o00OOOo()Z

    move-result v1

    if-nez v1, :cond_22

    :cond_21
    iget v1, v0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-ne v1, v2, :cond_23

    .line 120
    :cond_22
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProAlertRecordingText:Landroid/widget/TextView;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    .line 122
    :cond_23
    :goto_7
    iget-object v1, v0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/ThemeResource;->getInstance()Lcom/android/camera/customization/ThemeResource;

    move-result-object v2

    const v3, 0x7f0600da

    invoke-virtual {v2, v3}, Lcom/android/camera/customization/ThemeResource;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xd4
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setShow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mShow:Z

    return-void
.end method

.method public setSilenceUpSwitchTarget(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->OooO00o()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const v1, 0x3eae147b    # 0.34f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setScale(F)V

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p1, :cond_0

    const p1, 0x7f110052

    goto :goto_0

    :cond_0
    const p1, 0x7f110053

    :goto_0
    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x3f666666    # 0.9f

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->OooO0oo()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAudioMapMove:Lcom/android/camera/AudioMapMove;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setUpAnimatorX()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutAudioMap:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mPercentX:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string/jumbo v3, "scaleX"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    .line 2
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAnimator1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 4
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutAudioMap:Landroid/widget/FrameLayout;

    new-array v1, v1, [F

    iget v6, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mXMovePosition:F

    aput v6, v1, v4

    const/4 v4, 0x0

    aput v4, v1, v5

    const-string/jumbo v4, "translationX"

    invoke-static {v0, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setUpAnimatorY()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutAudioMap:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mPercentY:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const-string/jumbo v2, "scaleY"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAnimator1:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x12c

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAnimator1:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setUpAudioMapPressAnimator()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setPostDelayedTime()V

    return-void
.end method

.method public setVolumeControlAnimationViewVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setVolumeControlPanelGone(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setVolumeControlPanelVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setVolumeControlValue(F)V
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/CameraSettings;->is3DAudioOn()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->isAiAudioNewEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/aiaudio/AiAudioParameterManager;->isSupportAiAudioNew(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiNoiseReductionState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    :cond_0
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlValue:F

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0707b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSwitchAnimator:Z

    if-eqz v0, :cond_1

    .line 4
    iput-boolean v3, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSwitchAnimator:Z

    .line 5
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setSilenceUpSwitchTarget(Z)V

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlValue:F

    sub-float/2addr v0, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSwitchAnimator:Z

    if-nez v0, :cond_2

    .line 7
    iput-boolean v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mSwitchAnimator:Z

    .line 8
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/top/FragmentTopAlert;->setSilenceUpSwitchTarget(Z)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVolumeControlPanel:Lcom/android/camera/VolumeControlPanel;

    invoke-virtual {v0, p1}, Lcom/android/camera/VolumeControlPanel;->setValueHorizontal(F)V

    :cond_3
    return-void
.end method

.method public showDocumentStateButton(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateButton:Lcom/android/camera/ui/MutiStateButton;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initDocumentStateButton()V

    :cond_0
    if-nez p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateButton:Lcom/android/camera/ui/MutiStateButton;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;ZLandroid/widget/LinearLayout$LayoutParams;I)V

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->updateDocumentState(Z)V

    goto :goto_1

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mDocumentStateButton:Lcom/android/camera/ui/MutiStateButton;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public showRecordingTime()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoRecording:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLlAlertRecordingTimeView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 5
    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mBlingAnimation:Landroid/view/animation/AlphaAnimation;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public updateEndGravityTip()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mEndGravityTipLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public updateFastmotionProRecordingTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFastmotionProAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateHistogramStatsData([I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHistogramView:Lcom/android/camera/ui/HistogramView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/camera/ui/HistogramView;->updateStats([I)V

    :cond_0
    return-void
.end method

.method public updateHistogramStatsData([I[I[I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mHistogramView:Lcom/android/camera/ui/HistogramView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/ui/HistogramView;->updateStats([I[I[I)V

    return-void
.end method

.method public updateLyingDirectHint(Z)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    .line 1
    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLyingDirectHintText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLyingDirectHintText:Landroid/widget/TextView;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0Oo;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooO0Oo;-><init>(Lcom/android/camera/fragment/top/FragmentTopAlert;)V

    sget-object v1, LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOOOO;->OooO00o:LOooO00o/OooO0O0/OooO00o/OoooO0/OooooOo/OooOOOO;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->addViewToTipLayout(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLyingDirectHintText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-eq p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mLyingDirectHintText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/top/FragmentTopAlert;->removeViewToTipLayout(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateProVideoRecordingSimpleView(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProVideoRecordingSimpleView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1200a3

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120041

    .line 4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getProVideoRecordingSimpleRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->setProVideoRecordingSimpleRunning(Z)V

    .line 9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xb5

    .line 10
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1, v0}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->forceUpdateManualView(Z)V

    .line 12
    :cond_1
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoHistogramOpen(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 13
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mFrameLayoutHistogram:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 14
    :cond_2
    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-static {p1}, Lcom/android/camera/CameraSettings;->isProVideoAudioMapOpen(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mProfessionalLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0, v0, p1}, Lcom/android/camera/fragment/BaseFragment;->animateViews(IZLandroid/view/View;)V

    .line 16
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->checkDependingVisible()V

    .line 17
    iget-boolean p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoUltraClearTipVisibleBeforeProVideoSimple:Z

    if-eqz p1, :cond_4

    .line 18
    iput-boolean v1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mIsVideoUltraClearTipVisibleBeforeProVideoSimple:Z

    .line 19
    new-instance p1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mVideoUltraClearTip:Landroid/widget/TextView;

    invoke-direct {p1, v0}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    :cond_4
    :goto_0
    return-void
.end method

.method public updateRecordingTime(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateRecordingTimeStyle(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f080907

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mAlertRecordingText:Landroid/widget/TextView;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void
.end method

.method public updateTopAlertLayout()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isBothLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLeftLandscapeMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isLandScape()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v1, 0xb6

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initPortraitTopTipLayout(Landroid/view/View;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/camera/fragment/top/FragmentTopAlert;->mTopTipLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/fragment/top/FragmentTopAlert;->initLandscapeTopTipLayout(Landroid/view/View;II)V

    :goto_1
    return-void
.end method
