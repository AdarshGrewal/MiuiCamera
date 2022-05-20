.class public Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentFuEmoticon.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;


# static fields
.field public static final FRAGMENT_INFO:I = 0xfff2

.field public static final RESOURCE_DESC:[I

.field public static final TAG:Ljava/lang/String;

.field public static final THUMBNAIL_TOTAL_COUNT:I = 0x6


# instance fields
.field public bitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mBottomActionLinearLayout:Landroid/widget/LinearLayout;

.field public mEmoticonRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

.field public mIsBackToPreview:Z

.field public mIsDirectEmoticon:Z

.field public mIsNeedShare:Z

.field public mIsRTL:Z

.field public mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field public mSaveEmoticonBtn:Landroid/widget/TextView;

.field public mSelectBtn:Landroid/widget/ImageView;

.field public mSelectedEmoInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mShareEmoticonBtn:Landroid/widget/TextView;

.field public shareUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->RESOURCE_DESC:[I

    return-void

    :array_0
    .array-data 4
        0x7f1204d5
        0x7f1204e3
        0x7f1204d9
        0x7f1204dd
        0x7f1204df
        0x7f1204de
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->shareUriList:Ljava/util/ArrayList;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->bitmapList:Ljava/util/List;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsRTL:Z

    return p0
.end method

.method private checkInitThumbnaiFinish()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private convertEmoticon(Z)V
    .locals 5

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    const-string v1, "convertEmoticon: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    const/16 v1, 0x50

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->backToPreview(Z)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1209a0

    invoke-static {p1, v0, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v3, 0x3

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    invoke-virtual {v0, v2, v3}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpRecordVideo(II)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    .line 8
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120537

    invoke-static {p1, v0, v1}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void

    .line 12
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsNeedShare:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    const-string v1, "mimoji_emoticon_share"

    .line 13
    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 14
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->getavatarItemType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimoji_emoticon_save"

    invoke-static {v0, v1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimoji2Click(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 16
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 19
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getGifFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".gif"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 22
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 25
    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_9

    if-eqz p1, :cond_8

    .line 26
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->createEmoticonPicture(Ljava/util/ArrayList;)V

    .line 27
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->coverEmoticonSuccess()V

    return-void

    .line 28
    :cond_9
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf6

    .line 29
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v1, :cond_a

    const v2, 0x7f1204ef

    .line 30
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->showProgressDialog(Ljava/lang/String;)V

    .line 31
    invoke-interface {v1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->saveEmoticon(Ljava/util/ArrayList;)V

    if-eqz p1, :cond_a

    .line 32
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->createEmoticonPicture(Ljava/util/ArrayList;)V

    :cond_a
    return-void
.end method

.method private createEmoticonPicture(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IMG_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    const-string/jumbo v6, "yyyyMMdd_HHmmss_SSS"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v2, v3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->setJpegFileName(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_JPEG_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".jpg"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/module/impl/component/FileUtils;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deleteEmoticonCache()V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_MP4_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 3
    sget-object v0, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_JPEG_CACHE_DIR:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->deleteFile(Ljava/lang/String;)Z

    return-void
.end method

.method private dissmissDialog()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOO0O;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOO0O;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private exitEmoticonSaved()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf6

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->dissmissDialog()V

    .line 4
    iget-boolean v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsBackToPreview:Z

    invoke-interface {v0, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onEmoticonBack(Z)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void saveEmoticonGif[] mimojiEditorControl null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    .line 7
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->cancelVideo2gif()V

    goto :goto_1

    .line 9
    :cond_1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void saveEmoticonGif[] mimojiVideoEditor null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private getavatarItemType()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getInstance()Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/impl/MimojiFuManager;->getFuAvatar()Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;

    move-result-object v0

    const-string v1, "cartoon"

    const-string v2, "custom"

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3
    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/mimojifu/faceunity/fupta/base/FuAvatar;->getDir()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    array-length v3, v0

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    array-length v3, v0

    sub-int/2addr v3, v4

    aget-object v3, v0, v3

    .line 5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-object v0, v0, v3

    goto :goto_1

    :cond_1
    array-length v3, v0

    sub-int/2addr v3, v4

    aget-object v0, v0, v3

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, " "

    .line 6
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, "human"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "person"

    goto :goto_2

    :cond_4
    const-string v0, ""

    :cond_5
    move-object v1, v2

    .line 8
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    .line 9
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->translateForHumanTemplate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private shareGif()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->shareUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1209a0

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->shareUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f1208da

    const-string v3, "image/gif"

    const-string v4, "android.intent.extra.STREAM"

    if-ne v0, v1, :cond_1

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->shareUriList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 6
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->shareUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 10
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private showBackDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->dissmissDialog()V

    .line 3
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120505

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1204ec

    .line 6
    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0O0;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0O0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1204d4

    .line 7
    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->dissmissDialog()V

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    .line 9
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOOo;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOOo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method private showSaveDialog()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->dissmissDialog()V

    .line 3
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12050b

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f120535

    .line 6
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v2, 0x7f12050c

    .line 7
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f120533

    .line 8
    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0OO;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0OO;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f1204d4

    .line 9
    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOO0;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOO0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    .line 7
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->dissmissDialog()V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1204ee

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void
.end method

.method public synthetic OooO00o(I)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz v0, :cond_0

    rsub-int/lit8 p1, p1, 0x6

    mul-int/lit8 p1, p1, 0x64

    .line 6
    div-int/lit8 p1, p1, 0x6

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->backToPreview(Z)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;ILandroid/view/View;)V
    .locals 2

    .line 1
    sget-object p3, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnRecyclerItemClick position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->isSelected()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->setSelected(Z)V

    .line 3
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;->setSelectState(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;I)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;Z)V
    .locals 4

    .line 9
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsBackToPreview:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 10
    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->reInitMimojiEditState(I)V

    .line 11
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v2, 0x13

    new-array v3, v1, [I

    .line 12
    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 13
    :cond_1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " backToPreview   xxx mIsBackToPreview : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsBackToPreview:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  mIsDirectEmoticon : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsDirectEmoticon:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsBackToPreview:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 15
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsDirectEmoticon:Z

    if-nez v0, :cond_2

    .line 16
    invoke-interface {p1, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->quitAndSaveEdit(Z)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const/4 p1, 0x1

    .line 17
    invoke-interface {p2, p1, p3}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onModeStateBack(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic OooO00o(Ljava/util/List;)V
    .locals 7

    .line 18
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mimojifu loadEmoticon bitmapList"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    .line 21
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 22
    new-instance v5, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    sget-object v6, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->RESOURCE_DESC:[I

    aget v6, v6, v2

    invoke-direct {v5, v3, v6, v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;-><init>(Landroid/graphics/Bitmap;II)V

    .line 23
    invoke-virtual {v5, v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->setSelected(Z)V

    .line 24
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_0
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mimojifu loadEmoticon mFuEmoticonAdapter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    if-nez v3, :cond_1

    move v1, v4

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    if-eqz p1, :cond_2

    .line 27
    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setDataList(Ljava/util/List;)V

    .line 28
    :cond_2
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v4}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpAvatarThumbnail(JI)V

    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f0800c0

    goto :goto_0

    :cond_0
    const p1, 0x7f0800c1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public synthetic OooO00o(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 30
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz p2, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->exitEmoticonSaved()V

    :cond_0
    return p1
.end method

.method public synthetic OooO0O0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1209a0

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void
.end method

.method public synthetic OooO0O0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->dissmissDialog()V

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120536

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void
.end method

.method public synthetic OooO0OO(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 3
    :goto_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showSaveDialog onClick positive, isChecked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iput-boolean p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsNeedShare:Z

    .line 6
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 7
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->convertEmoticon(Z)V

    :cond_1
    return-void
.end method

.method public synthetic OooO0Oo()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f120536

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void
.end method

.method public synthetic OooO0Oo(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "showSaveDialog onClick negative"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->dissmissDialog()V

    return-void
.end method

.method public synthetic OooO0o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    const v1, 0x7f1200ac

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    const v1, 0x7f12004b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 3
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 6
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method public synthetic OooO0oO()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    const v1, 0x7f12004a

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    const v1, 0x7f1200ad

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public backToPreview(Z)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->deleteEmoticonCache()V

    .line 2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " backToPreview(boolean isSave) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf7

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    .line 5
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf6

    .line 6
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    if-eqz v1, :cond_0

    .line 7
    iget-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsBackToPreview:Z

    invoke-interface {v1, v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiControl;->onEmoticonBack(Z)V

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xed

    .line 9
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    .line 10
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xfc

    .line 11
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v2, :cond_1

    .line 12
    invoke-interface {v2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->cancelVideo2gif()V

    .line 13
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    invoke-static {}, Lcom/android/camera/customization/FlashHalo;->getInstance()Lcom/android/camera/customization/FlashHalo;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/customization/FlashHalo;->reConfigScreenHaloRequest(IZZZZ)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOOO;

    invoke-direct {v3, p0, v0, v1, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOOO;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;Z)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public coverEmoticonError()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0oO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0oO;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public coverEmoticonSuccess()V
    .locals 12

    const-string v0, "Current video URI: "

    .line 1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-interface {v1}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0x12c

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    .line 5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getGifFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".gif"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 6
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 9
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->shareUriList:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v8, v10, v7, v11, v6}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->copy2ShareFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v9

    .line 12
    iget-boolean v6, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsNeedShare:Z

    if-eqz v6, :cond_3

    .line 13
    invoke-virtual {v1, v10, v9, v5, v5}, Lcom/android/camera/storage/ImageSaver;->addGifSync(Ljava/lang/String;Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 14
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->shareUriList:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 15
    invoke-virtual {v4, v9}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->setUri(Landroid/net/Uri;)V

    .line 16
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->shareUriList:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v1, v10, v9, v5, v5}, Lcom/android/camera/storage/ImageSaver;->addGif(Ljava/lang/String;Landroid/net/Uri;II)V

    .line 18
    :cond_4
    :goto_1
    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coverEmoticonSuccess : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " \n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  mIsNeedShare "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsNeedShare:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 20
    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v4

    .line 22
    :try_start_1
    sget-object v5, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    const-string v6, "failed to add video to media store"

    invoke-static {v5, v6, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    sget-object v4, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :goto_3
    sget-object v2, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    .line 24
    :cond_5
    iget-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsNeedShare:Z

    if-eqz v0, :cond_6

    .line 25
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->dissmissDialog()V

    .line 26
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->shareGif()V

    return-void

    .line 27
    :cond_6
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_JPEG_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_5

    .line 29
    :cond_7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getJpegFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 31
    new-instance v8, Ljava/io/File;

    sget-object v9, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_JPEG_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v8, v9, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_4

    .line 33
    :cond_8
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v8, Lcom/android/camera/EncodingQuality;->NORMAL:Lcom/android/camera/EncodingQuality;

    invoke-virtual {v8, v3}, Lcom/android/camera/EncodingQuality;->toInteger(Z)I

    move-result v8

    invoke-static {v2, v8}, Lcom/android/camera/Util;->getBitmapData(Landroid/graphics/Bitmap;I)[B

    move-result-object v2

    .line 34
    new-instance v8, Lcom/android/camera/storage/ImageSaveRequest$Builder;

    invoke-direct {v8}, Lcom/android/camera/storage/ImageSaveRequest$Builder;-><init>()V

    .line 35
    invoke-virtual {v8, v2}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setData([B)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 36
    invoke-virtual {v8, v6}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setNeedThumbnail(Z)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 37
    invoke-virtual {v8, v7}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setTitle(Ljava/lang/String;)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setDate(J)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 39
    invoke-virtual {v8, v5}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setWidth(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 40
    invoke-virtual {v8, v5}, Lcom/android/camera/storage/AbstractSaveRequest$Builder;->setHeight(I)Lcom/android/camera/storage/AbstractSaveRequest$Builder;

    .line 41
    invoke-virtual {v8, v6}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setFinalImage(Z)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    .line 42
    invoke-virtual {v8, v4}, Lcom/android/camera/storage/ImageSaveRequest$Builder;->setPreviewThumbnailHash(I)Lcom/android/camera/storage/ImageSaveRequest$Builder;

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v1, v8, v2}, Lcom/android/camera/storage/ImageSaver;->addImage(Lcom/android/camera/storage/ImageSaveRequest$Builder;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_4

    .line 44
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO00o;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO00o;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {p0, v6}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->backToPreview(Z)V

    .line 46
    invoke-static {}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->getInstance()Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;

    move-result-object v0

    invoke-virtual {v0, v6, v4}, Lcom/android/camera/features/mimojis/commen/utils/MimojiDumpUtil;->dumpRecordVideo(II)V

    return-void

    .line 47
    :cond_a
    :goto_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOO;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 48
    invoke-virtual {p0, v6}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->backToPreview(Z)V

    return-void

    .line 49
    :cond_b
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0o0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0o0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 50
    invoke-virtual {p0, v3}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->backToPreview(Z)V

    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    const v0, 0xfff2

    return v0
.end method

.method public getLayoutResourceId()I
    .locals 1

    const v0, 0x7f0d009a

    return v0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a00a0

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSaveEmoticonBtn:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00a2

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mShareEmoticonBtn:Landroid/widget/TextView;

    .line 4
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a009d

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/View;

    .line 6
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSaveEmoticonBtn:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mShareEmoticonBtn:Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f0600dd

    invoke-static {v2, v1}, Lcom/android/camera/animation/FolmeUtils;->touchButtonTint(I[Landroid/view/View;)V

    .line 7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v1

    const-class v2, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {v1, v2}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const v1, 0x7f0a0226

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mBottomActionLinearLayout:Landroid/widget/LinearLayout;

    .line 9
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 10
    invoke-static {}, Lcom/android/camera/display/Display;->getNavigationBarHeight()I

    move-result v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 11
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mBottomActionLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a00a1

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0364

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mEmoticonRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsRTL:Z

    .line 16
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    if-nez p1, :cond_0

    .line 17
    new-instance p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    .line 18
    new-instance p1, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseNoScrollGridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseNoScrollGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 19
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mEmoticonRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 20
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mEmoticonRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mEmoticonRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon$1;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mEmoticonRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOo0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOOo0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setOnRecyclerItemClickListener(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;)V

    .line 24
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOO0o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOO0o;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;->setOnAllSelectStateChangeListener(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter$OnAllSelectStateChangeListener;)V

    return-void
.end method

.method public loadEmoticon(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->bitmapList:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0o;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0o;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show emoticon error \uff1abitmapList == null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->bitmapList:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->bitmapList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->loadEmoticon(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->showBackDialog()V

    return v0

    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick viewName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 3
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->checkInitThumbnaiFinish()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->shareUriList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsNeedShare:Z

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->convertEmoticon(Z)V

    goto :goto_0

    .line 7
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->checkInitThumbnaiFinish()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;->getIsAllSelected()Z

    move-result p1

    .line 9
    sget-object v0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick isAllSelected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x64

    if-eqz p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;->clearState()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0Oo;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0Oo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;->selectAll()V

    .line 13
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0oo;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooO0oo;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 14
    :pswitch_3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->checkInitThumbnaiFinish()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 15
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->showSaveDialog()V

    goto :goto_0

    .line 16
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->showBackDialog()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a009d
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    .line 5
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->deleteEmoticonCache()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    .line 2
    sget-object p1, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "provideAnimateElement, animateInElements"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "resetType = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-ne p3, p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->backToPreview(Z)V

    .line 4
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->reset()V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa0

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 9
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->getFragmentInto()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    :cond_1
    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfa

    .line 4
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    return-void
.end method

.method public release()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    .line 4
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 6
    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->dissmissDialog()V

    .line 8
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mFuEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/adapter/MimojiFuEmoticonAdapter;

    .line 9
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->setEmoManager(Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;)V

    return-void
.end method

.method public setIsDirectEmoticon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsDirectEmoticon:Z

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->mIsBackToPreview:Z

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 2
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/BaseFragment;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfa

    .line 4
    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 5
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;->release()V

    return-void
.end method

.method public updateEmoticonGifProgress(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOO0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0OO/OooO00o/OooO00o/OooOO0;-><init>(Lcom/android/camera/features/mimojis/mimojifu/fragment/edit/FragmentFuEmoticon;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateEmoticonPictureProgress(Ljava/lang/String;Lcom/arcsoft/avatar2/emoticon/EmoInfo;Z)V
    .locals 0

    return-void
.end method

.method public updateEmoticonThumbnailProgress(ILcom/arcsoft/avatar2/emoticon/EmoInfo;I)V
    .locals 0

    return-void
.end method
