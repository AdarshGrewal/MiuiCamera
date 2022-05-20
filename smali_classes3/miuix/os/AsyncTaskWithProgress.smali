.class public abstract Lmiuix/os/AsyncTaskWithProgress;
.super Landroid/os/AsyncTask;
.source "AsyncTaskWithProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;,
        Lmiuix/os/AsyncTaskWithProgress$Listeners;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "TParams;",
        "Ljava/lang/Integer;",
        "TResult;>;"
    }
.end annotation


# static fields
.field public static final sAllTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field public mCancelable:Z

.field public mCurrentProgress:I

.field public volatile mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

.field public final mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field public mIndeterminate:Z

.field public final mListeners:Lmiuix/os/AsyncTaskWithProgress$Listeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>.",
            "Listeners;"
        }
    .end annotation
.end field

.field public mMaxProgress:I

.field public mMessage:Ljava/lang/CharSequence;

.field public mMessageId:I

.field public mProgressStyle:I

.field public mTheme:I

.field public mTitle:Ljava/lang/CharSequence;

.field public mTitleId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTheme:I

    .line 3
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitleId:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    .line 5
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessageId:I

    .line 6
    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    .line 7
    iput-boolean v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    .line 8
    iput-boolean v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mIndeterminate:Z

    .line 9
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMaxProgress:I

    .line 10
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mProgressStyle:I

    .line 11
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    .line 12
    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 13
    new-instance v0, Lmiuix/os/AsyncTaskWithProgress$Listeners;

    invoke-direct {v0, p0, v1}, Lmiuix/os/AsyncTaskWithProgress$Listeners;-><init>(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$1;)V

    iput-object v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mListeners:Lmiuix/os/AsyncTaskWithProgress$Listeners;

    .line 14
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public static synthetic access$100(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p0
.end method

.method public static synthetic access$1000(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mProgressStyle:I

    return p0
.end method

.method public static synthetic access$102(Lmiuix/os/AsyncTaskWithProgress;Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    return-object p1
.end method

.method public static synthetic access$1100(Lmiuix/os/AsyncTaskWithProgress;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mIndeterminate:Z

    return p0
.end method

.method public static synthetic access$1200(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMaxProgress:I

    return p0
.end method

.method public static synthetic access$1300(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    return p0
.end method

.method public static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    return-object v0
.end method

.method public static synthetic access$300(Lmiuix/os/AsyncTaskWithProgress;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    return p0
.end method

.method public static synthetic access$400(Lmiuix/os/AsyncTaskWithProgress;)Lmiuix/os/AsyncTaskWithProgress$Listeners;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mListeners:Lmiuix/os/AsyncTaskWithProgress$Listeners;

    return-object p0
.end method

.method public static synthetic access$500(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTheme:I

    return p0
.end method

.method public static synthetic access$600(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitleId:I

    return p0
.end method

.method public static synthetic access$700(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static synthetic access$800(Lmiuix/os/AsyncTaskWithProgress;)I
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessageId:I

    return p0
.end method

.method public static synthetic access$900(Lmiuix/os/AsyncTaskWithProgress;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method private dismissDialog()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancelled()V
    .locals 3

    .line 1
    sget-object v0, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncTaskWithProgress@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lmiuix/os/AsyncTaskWithProgress;->dismissDialog()V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 1
    sget-object p1, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTaskWithProgress@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lmiuix/os/AsyncTaskWithProgress;->dismissDialog()V

    return-void
.end method

.method public onPreExecute()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncTaskWithProgress@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lmiuix/os/AsyncTaskWithProgress;->sAllTasks:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->newInstance(Ljava/lang/String;)Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    move-result-object v1

    iput-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    .line 5
    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-boolean v2, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    invoke-virtual {v1, v2}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 6
    iget-object v1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget-object v2, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    .line 4
    iget-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mFragment:Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;

    iget v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mCurrentProgress:I

    invoke-virtual {p1, v0}, Lmiuix/os/AsyncTaskWithProgress$ProgressDialogFragment;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public setCancelable(Z)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mCancelable:Z

    return-object p0
.end method

.method public setIndeterminate(Z)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mIndeterminate:Z

    return-object p0
.end method

.method public setMaxProgress(I)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMaxProgress:I

    return-object p0
.end method

.method public setMessage(I)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessageId:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lmiuix/os/AsyncTaskWithProgress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessageId:I

    .line 4
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setProgressStyle(I)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mProgressStyle:I

    return-object p0
.end method

.method public setTheme(I)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mTheme:I

    return-object p0
.end method

.method public setTitle(I)Lmiuix/os/AsyncTaskWithProgress;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitleId:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lmiuix/os/AsyncTaskWithProgress;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lmiuix/os/AsyncTaskWithProgress<",
            "TParams;TResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitleId:I

    .line 4
    iput-object p1, p0, Lmiuix/os/AsyncTaskWithProgress;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method
