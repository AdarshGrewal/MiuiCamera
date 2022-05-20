.class public Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentMimojiAsEmoticon.java"

# interfaces
.implements Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl$MimojiEmoticon;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;


# static fields
.field public static final FRAGMENT_INFO:I = 0xfff2

.field public static final TAG:Ljava/lang/String;

.field public static final THUMBNAIL_TOTAL_COUNT:I = 0x6


# instance fields
.field public mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mBottomActionLinearLayout:Landroid/widget/LinearLayout;

.field public mEmoticonRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public mIsDirectEmoticon:Z

.field public mIsNeedShare:Z

.field public mIsRTL:Z

.field public mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

.field public mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

.field public mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

.field public mSaveEmoticonBtn:Landroid/widget/TextView;

.field public mSelectBtn:Landroid/widget/ImageView;

.field public mSelectedEmoInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/arcsoft/avatar2/emoticon/EmoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mShareEmoInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public mShareEmoticonBtn:Landroid/widget/TextView;

.field public mThumbnailPaint:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MIMOJI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mShareEmoInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mIsRTL:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->dissmissDialog()V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->saveEmoticonGif(Z)V

    return-void
.end method

.method private checkInitThumbnaiFinish()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

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
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 3
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 6
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_1
    return-void
.end method

.method private getEmoticonThumbnail()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xf7

    .line 2
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->createEmoticonThumbnail()V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    const-string v1, "mimoji void initEmoticon[] null"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private saveEmoticonGif(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mIsNeedShare:Z

    .line 3
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    const/16 v2, 0x50

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->backToPreview(Z)V

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1209a0

    invoke-static {p1, v0, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    .line 7
    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v4, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getEmoInfo()Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120537

    invoke-static {p1, v0, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void

    .line 11
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 15
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_6

    aget-object v5, v2, v4

    .line 16
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/module/impl/component/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 17
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 18
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 19
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    .line 20
    invoke-virtual {v7}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 21
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 22
    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xf7

    .line 23
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v2, :cond_a

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_8

    if-eqz p1, :cond_7

    .line 25
    invoke-interface {v2, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->createEmoticonPicture(Ljava/util/List;)V

    goto :goto_3

    .line 26
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->coverEmoticonSuccess()V

    goto :goto_3

    :cond_8
    const v3, 0x7f1204ef

    .line 27
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->showProgressDialog(Ljava/lang/String;I)V

    if-nez p1, :cond_9

    .line 28
    invoke-interface {v2, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->createEmoticonVideo(Ljava/util/List;)V

    goto :goto_3

    .line 29
    :cond_9
    invoke-interface {v2, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->createEmoticonPicture(Ljava/util/List;)V

    goto :goto_3

    .line 30
    :cond_a
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    const-string v0, "mimoji void saveEmoticonGif[] null"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private shareEmoticonGif()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mShareEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mIsNeedShare:Z

    .line 4
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    const/16 v2, 0x50

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p0, v3}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->backToPreview(Z)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1209a0

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    invoke-virtual {v1}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    .line 8
    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->isSelected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    iget-object v5, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->getEmoInfo()Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120537

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 12
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 14
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 16
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_6

    aget-object v5, v1, v4

    .line 17
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/module/impl/component/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 18
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 19
    :cond_4
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 20
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    .line 21
    invoke-virtual {v7}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 22
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 23
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 24
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->coverEmoticonSuccess()V

    return-void

    .line 25
    :cond_7
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xf7

    .line 26
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v1, :cond_8

    const v2, 0x7f1204ef

    .line 27
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->showProgressDialog(Ljava/lang/String;I)V

    .line 28
    invoke-interface {v1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->createEmoticonVideo(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method private showBackDialog()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->dissmissDialog()V

    .line 3
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120505

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1204ec

    new-instance v3, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$5;

    invoke-direct {v3, p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$5;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V

    .line 6
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1204d4

    new-instance v3, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$4;

    invoke-direct {v3, p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$4;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V

    .line 7
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 8
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;I)V
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

    if-nez v0, :cond_4

    if-gez p2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setProgressStyle(I)V

    .line 6
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 7
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMax(I)V

    .line 8
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOO0;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOO0;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1, p2}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mProgressDialog:Lmiuix/appcompat/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void

    .line 13
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->dissmissDialog()V

    return-void
.end method

.method private showSaveDialog()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->dissmissDialog()V

    .line 3
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12050b

    .line 4
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 5
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f120535

    .line 6
    invoke-virtual {v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f12050c

    .line 7
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120533

    new-instance v3, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$3;

    invoke-direct {v3, p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$3;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V

    .line 8
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1204d4

    new-instance v3, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$2;

    invoke-direct {v3, p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$2;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V

    .line 9
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 10
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 3

    .line 20
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->dissmissDialog()V

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1204ee

    const/16 v2, 0x50

    invoke-static {v0, v1, v2}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void
.end method

.method public synthetic OooO00o(I)V
    .locals 1

    const v0, 0x7f1204ef

    .line 19
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    rsub-int/lit8 p1, p1, 0x6

    mul-int/lit8 p1, p1, 0x64

    div-int/lit8 p1, p1, 0x6

    invoke-direct {p0, v0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->showProgressDialog(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;ILandroid/view/View;)V
    .locals 2

    .line 1
    sget-object p3, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

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
    iget-object p3, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->setSelectState(Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;I)V

    return-void
.end method

.method public synthetic OooO00o(Lcom/arcsoft/avatar2/emoticon/EmoInfo;II)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mThumbnailPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mThumbnailPaint:Landroid/graphics/Paint;

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    :cond_0
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    const-string v2, "mimoji void updateEmoticonThumbnailProgress[num, emoInfo]"

    invoke-static {v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbnailData()[B

    move-result-object v3

    if-eqz v3, :cond_2

    .line 9
    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_EMO_THUM_SIZE:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    sget-object v4, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->CONFIG_EMO_THUM_SIZE:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 10
    invoke-virtual {p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getThumbnailData()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-eqz v3, :cond_1

    const/high16 p2, 0x41a00000    # 20.0f

    .line 11
    invoke-static {v3, p2}, Lcom/android/camera/Util;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_1
    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    if-nez p2, :cond_4

    return-void

    .line 15
    :cond_4
    new-instance p2, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;

    invoke-direct {p2, p1, v0, p3}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;-><init>(Lcom/arcsoft/avatar2/emoticon/EmoInfo;Landroid/graphics/Bitmap;I)V

    .line 16
    invoke-virtual {p2, v1}, Lcom/android/camera/features/mimojis/mimojias/bean/MimojiEmoticonInfo;->setSelected(Z)V

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    invoke-virtual {p1, p2}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->addData(Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_5
    :goto_1
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    const-string p2, "mimoji thumbnail null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic OooO00o(Z)V
    .locals 5

    .line 31
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v2, 0x13

    new-array v3, v1, [I

    .line 32
    invoke-interface {v0, v2, v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I[I)V

    .line 33
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v2, 0xed

    .line 34
    invoke-virtual {v0, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    .line 35
    iget-boolean v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mIsDirectEmoticon:Z

    const/4 v3, 0x1

    const/16 v4, 0xf7

    if-eqz v2, :cond_2

    .line 36
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    .line 37
    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz v2, :cond_1

    .line 38
    invoke-interface {v2, v1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->quitAndSaveEdit(Z)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_4

    .line 39
    invoke-interface {v0, v3, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->onModeStateBack(IZ)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 40
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object p1

    const-class v1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1, v3}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->getMimojiModeState(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;->setModeState(I)V

    .line 41
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    .line 42
    invoke-virtual {p1, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    .line 43
    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->reInitMimojiEditState(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public synthetic OooO00o(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    .line 22
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xf7

    .line 23
    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p2, :cond_0

    .line 24
    invoke-interface {p2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->quitCoverEmoticon()V

    .line 25
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->dissmissDialog()V

    goto :goto_0

    .line 26
    :cond_0
    sget-object p2, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    const-string p3, "mimoji void saveEmoticonGif[] mimojiEditorControl null"

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xfc

    .line 28
    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p2, :cond_1

    .line 29
    invoke-interface {p2}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->cancelVideo2gif()V

    goto :goto_1

    .line 30
    :cond_1
    sget-object p2, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    const-string p3, "mimoji void saveEmoticonGif[] mimojiVideoEditor null"

    invoke-static {p2, p3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return p1
.end method

.method public synthetic OooO0O0()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    const v1, 0x7f1200ac

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    const v1, 0x7f12004b

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public synthetic OooO0O0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const p1, 0x7f0800c0

    goto :goto_0

    :cond_0
    const p1, 0x7f0800c1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public synthetic OooO0OO()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectBtn:Landroid/widget/ImageView;

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
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    const v1, 0x7f1200ad

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public backToPreview(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->deleteEmoticonCache()V

    .line 2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xfc

    .line 3
    invoke-virtual {v0, v1}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->cancelVideo2gif()V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOOO0;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOOO0;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

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

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOOOO;

    invoke-direct {v1, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOOOO;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public coverEmoticonSuccess()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "Current video URI: "

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/16 v5, 0x50

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_b

    .line 3
    :cond_0
    iget-boolean v3, v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mIsNeedShare:Z

    const-string v7, ".gif"

    const-string v8, "_"

    const-string v9, "MIMOJI_GIF"

    const/16 v10, 0x12c

    const/4 v11, 0x1

    if-eqz v3, :cond_7

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v12, v3

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_4

    aget-object v14, v3, v13

    .line 5
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 6
    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    .line 7
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v17, 0x0

    .line 8
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v14, v4, v0, v6, v11}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->copy2ShareFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    invoke-interface {v0}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v0

    invoke-virtual {v0, v4, v6, v10, v10}, Lcom/android/camera/storage/ImageSaver;->addGifSync(Ljava/lang/String;Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mimoji void shareEmoticonGif[] f.getAbsolutePath() : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " \n"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "   "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {v0, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_1

    .line 15
    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mShareEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 16
    :cond_1
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v6

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v6

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v4, v17

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v4, v17

    .line 17
    :goto_2
    :try_start_3
    sget-object v6, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    const-string v10, "failed to add video to media store"

    invoke-static {v6, v10, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 18
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_2
    move-exception v0

    :goto_4
    sget-object v3, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    :cond_2
    :goto_5
    const/16 v10, 0x12c

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v13, v13, 0x1

    const/16 v10, 0x12c

    goto/16 :goto_0

    .line 19
    :cond_4
    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mShareEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 20
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1209a0

    invoke-static {v0, v2, v5}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    return-void

    .line 21
    :cond_5
    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mShareEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const v2, 0x7f1208da

    const-string v3, "image/gif"

    const-string v4, "android.intent.extra.STREAM"

    if-ne v0, v11, :cond_6

    .line 22
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v5, v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mShareEmoInfoList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 26
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v5, v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mShareEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 28
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 30
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->deleteEmoticonCache()V

    .line 31
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->dissmissDialog()V

    goto/16 :goto_a

    .line 32
    :cond_7
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v3, :cond_a

    aget-object v4, v2, v6

    .line 33
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/module/impl/component/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 34
    iget-object v0, v1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    .line 35
    invoke-virtual {v0}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/android/camera/module/impl/component/FileUtils;->createtFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/android/camera/storage/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 38
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v4, v13, v0, v14, v11}, Lcom/android/camera/storage/mediastore/ScopedStorageUtil;->copy2ShareFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 39
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    check-cast v14, Lcom/android/camera/ActivityBase;

    invoke-interface {v14}, Lcom/android/camera/AppController;->getImageSaver()Lcom/android/camera/storage/ImageSaver;

    move-result-object v14
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    const/16 v15, 0x12c

    :try_start_5
    invoke-virtual {v14, v13, v0, v15, v15}, Lcom/android/camera/storage/ImageSaver;->addGif(Ljava/lang/String;Landroid/net/Uri;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_9

    :catch_4
    move-exception v0

    const/16 v15, 0x12c

    .line 40
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :cond_8
    const/16 v15, 0x12c

    goto :goto_8

    :cond_9
    const/16 v15, 0x12c

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 41
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f120536

    invoke-static {v0, v2, v5}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    .line 42
    invoke-virtual {v1, v11}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->backToPreview(Z)V

    :goto_a
    return-void

    .line 43
    :cond_b
    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1209a0

    invoke-static {v0, v2, v5}, Lcom/android/camera/ToastUtils;->showToast(Landroid/content/Context;II)V

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v2}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->backToPreview(Z)V

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

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSaveEmoticonBtn:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00a2

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mShareEmoticonBtn:Landroid/widget/TextView;

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
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSaveEmoticonBtn:Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mShareEmoticonBtn:Landroid/widget/TextView;

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

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    const v1, 0x7f0a0226

    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mBottomActionLinearLayout:Landroid/widget/LinearLayout;

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
    iget-object v2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mBottomActionLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0a00a1

    .line 12
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    .line 13
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a0364

    .line 14
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mEmoticonRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mIsRTL:Z

    .line 16
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->deleteEmoticonCache()V

    .line 17
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    .line 19
    new-instance p1, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseNoScrollGridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseNoScrollGridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 20
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mEmoticonRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mEmoticonRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 22
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mEmoticonRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$1;

    invoke-direct {v0, p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon$1;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 23
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mEmoticonRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    :cond_0
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOOo0;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOOo0;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->setOnRecyclerItemClickListener(Lcom/android/camera/features/mimojis/commen/widget/baseview/OnRecyclerItemClickListener;)V

    .line 25
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    new-instance v0, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOOO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOOO;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->setOnAllSelectStateChangeListener(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter$OnAllSelectStateChangeListener;)V

    .line 26
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->getEmoticonThumbnail()V

    return-void
.end method

.method public loadEmoticon(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

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
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->showBackDialog()V

    return v0

    :cond_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2
    :pswitch_1
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: btn_share_emoticon"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->checkInitThumbnaiFinish()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->shareEmoticonGif()V

    goto :goto_0

    .line 5
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->checkInitThumbnaiFinish()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->getIsAllSelected()Z

    move-result p1

    .line 7
    sget-object v0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick: btn_select_all, isAllSelected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x64

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->clearState()V

    .line 9
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOO0O;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOO0O;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;->selectAll()V

    .line 11
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectBtn:Landroid/widget/ImageView;

    new-instance v2, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOO0o;

    invoke-direct {v2, p0}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOO0o;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;)V

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 12
    :pswitch_3
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: btn_save_emoticon"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->checkInitThumbnaiFinish()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    .line 14
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->showSaveDialog()V

    goto :goto_0

    .line 15
    :pswitch_4
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick: btn_back"

    invoke-static {p1, v0}, Lcom/android/camera/log/Log;->u(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->backToPreview(Z)V

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

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 4
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

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
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

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

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mIsDirectEmoticon:Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->backToPreview(Z)V

    .line 5
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiProcessing:Lcom/android/camera/features/mimojis/commen/MimojiProcessing;

    invoke-virtual {p1}, Lcom/android/camera/features/mimojis/commen/MimojiProcessing;->reset()V

    .line 6
    iget-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 9
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 p2, 0xa0

    invoke-virtual {p1, p2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 10
    invoke-interface {p1}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->getFragmentInto()I

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
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/features/mimojis/commen/widget/baseview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

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
    invoke-direct {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->dissmissDialog()V

    .line 8
    iput-object v1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mMimojiAsEmoticonAdapter:Lcom/android/camera/features/mimojis/mimojias/fragment/edit/MimojiAsEmoticonAdapter;

    .line 9
    invoke-static {}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->getInstance()Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/features/mimojis/mimojias/widget/helper/AvatarEngineManager;->setEmoManager(Lcom/arcsoft/avatar2/emoticon/AvatarEmoManager;)V

    return-void
.end method

.method public setIsDirectEmoticon(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mIsDirectEmoticon:Z

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
    invoke-virtual {p0}, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->release()V

    return-void
.end method

.method public updateEmoticonGifProgress(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOOo;

    invoke-direct {v1, p0, p1}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOOo;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const/16 v0, 0xfc

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p1

    check-cast p1, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;->video2gif(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateEmoticonPictureProgress(Ljava/lang/String;Lcom/arcsoft/avatar2/emoticon/EmoInfo;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object p2, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mimoji void updateEmoticonPictureProgress[path, emoInfo, isFinal]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object p2, p0, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->mSelectedEmoInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    new-instance p2, Ljava/io/File;

    sget-object p3, Lcom/android/camera/features/mimojis/commen/MimojiHelper;->EMOTICON_GIF_CACHE_DIR:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 7
    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    array-length p3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    aget-object v1, p2, v0

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/module/impl/component/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 10
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/arcsoft/avatar2/emoticon/EmoInfo;

    .line 12
    invoke-virtual {v3}, Lcom/arcsoft/avatar2/emoticon/EmoInfo;->getEmoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p2

    const/16 p3, 0xf7

    .line 15
    invoke-virtual {p2, p3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object p2

    check-cast p2, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;

    if-eqz p2, :cond_4

    .line 16
    invoke-interface {p2, p1}, Lcom/android/camera/features/mimojis/mvp/base/protocol/MimojiModeProtocol$MimojiEditorControl;->createEmoticonVideo(Ljava/util/List;)V

    goto :goto_2

    .line 17
    :cond_4
    sget-object p1, Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;->TAG:Ljava/lang/String;

    const-string p2, "mimoji void saveEmoticonGif[] null"

    invoke-static {p1, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    return-void
.end method

.method public updateEmoticonThumbnailProgress(ILcom/arcsoft/avatar2/emoticon/EmoInfo;I)V
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

    new-instance v1, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOOOo;

    invoke-direct {v1, p0, p2, p1, p3}, LOooO00o/OooO0O0/OooO00o/OoooO00/OooO0O0/OooO0O0/OooO00o/OooO00o/OooOOOo;-><init>(Lcom/android/camera/features/mimojis/mimojias/fragment/edit/FragmentMimojiAsEmoticon;Lcom/arcsoft/avatar2/emoticon/EmoInfo;II)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
