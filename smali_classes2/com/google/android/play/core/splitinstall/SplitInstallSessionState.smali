.class public Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;
.super Ljava/lang/Object;
.source "SplitInstallSessionState.java"


# instance fields
.field public final bytesDownloaded:J

.field public final errorCode:I

.field public final moduleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final sessionId:I

.field public splitFileIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public final status:I

.field public final totalBytesToDownload:J

.field public final userConfirmationIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(IIIJJLjava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJJ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId:I

    .line 3
    iput p2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status:I

    .line 4
    iput p3, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode:I

    .line 5
    iput-wide p4, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded:J

    .line 6
    iput-wide p6, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload:J

    .line 7
    iput-object p8, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames:Ljava/util/List;

    .line 8
    iput-object p9, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->userConfirmationIntent:Landroid/app/PendingIntent;

    .line 9
    iput-object p10, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->splitFileIntents:Ljava/util/List;

    return-void
.end method

.method public static createFrom(Landroid/os/Bundle;)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;
    .locals 12

    .line 1
    new-instance v11, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    const-string v0, "session_id"

    .line 2
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "status"

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "error_code"

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "bytes_downloaded"

    .line 5
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "total_bytes_to_download"

    .line 6
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "module_names"

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    const-string v0, "user_confirmation_intent"

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    const-string v0, "split_file_intents"

    .line 9
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;-><init>(IIIJJLjava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    return-object v11
.end method


# virtual methods
.method public final a(I)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;
    .locals 12

    .line 1
    new-instance v11, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->splitFileIntents:Ljava/util/List;

    move-object v0, v11

    move v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;-><init>(IIIJJLjava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    return-object v11
.end method

.method public final a(II)Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;
    .locals 12

    .line 2
    new-instance v11, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->resolutionIntent()Landroid/app/PendingIntent;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->splitFileIntents:Ljava/util/List;

    move-object v0, v11

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v10}, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;-><init>(IIIJJLjava/util/List;Landroid/app/PendingIntent;Ljava/util/List;)V

    return-object v11
.end method

.method public bytesDownloaded()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded:J

    return-wide v0
.end method

.method public errorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode:I

    return v0
.end method

.method public moduleNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames:Ljava/util/List;

    return-object v0
.end method

.method public final resolutionIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->userConfirmationIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public sessionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId:I

    return v0
.end method

.method public status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    .line 1
    iget v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->sessionId:I

    .line 2
    iget v1, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->status:I

    .line 3
    iget v2, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->errorCode:I

    .line 4
    iget-wide v3, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->bytesDownloaded:J

    .line 5
    iget-wide v5, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload:J

    .line 6
    iget-object v7, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->moduleNames:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit16 v9, v9, 0xb7

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "SplitInstallSessionState{sessionId="

    .line 8
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    .line 10
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", errorCode="

    .line 12
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", bytesDownloaded="

    .line 14
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",totalBytesToDownload="

    .line 16
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",moduleNames="

    .line 18
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    .line 20
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalBytesToDownload()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/play/core/splitinstall/SplitInstallSessionState;->totalBytesToDownload:J

    return-wide v0
.end method
