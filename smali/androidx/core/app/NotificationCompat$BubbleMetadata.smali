.class public final Landroidx/core/app/NotificationCompat$BubbleMetadata;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BubbleMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;
    }
.end annotation


# static fields
.field public static final FLAG_AUTO_EXPAND_BUBBLE:I = 0x1

.field public static final FLAG_SUPPRESS_NOTIFICATION:I = 0x2


# instance fields
.field public mDeleteIntent:Landroid/app/PendingIntent;

.field public mDesiredHeight:I

.field public mDesiredHeightResId:I

.field public mFlags:I

.field public mIcon:Landroidx/core/graphics/drawable/IconCompat;

.field public mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    .line 4
    iput-object p3, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    .line 5
    iput p4, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeight:I

    .line 6
    iput p5, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeightResId:I

    .line 7
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 8
    iput p6, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILandroidx/core/app/NotificationCompat$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/core/app/NotificationCompat$BubbleMetadata;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;III)V

    return-void
.end method

.method public static fromPlatform(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeight(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;

    .line 12
    :cond_2
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Builder;->build()Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static toPlatform(Landroidx/core/app/NotificationCompat$BubbleMetadata;)Landroid/app/Notification$BubbleMetadata;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Landroid/app/Notification$BubbleMetadata$Builder;

    invoke-direct {v0}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->toIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 10
    :cond_1
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p0}, Landroidx/core/app/NotificationCompat$BubbleMetadata;->getDesiredHeightResId()I

    move-result p0

    .line 12
    invoke-virtual {v0, p0}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 13
    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata$Builder;->build()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAutoExpandBubble()Z
    .locals 2

    .line 1
    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDeleteIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeight:I

    return v0
.end method

.method public getDesiredHeightResId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mDesiredHeightResId:I

    return v0
.end method

.method public getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mIcon:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getIntent()Landroid/app/PendingIntent;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public isNotificationSuppressed()Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/core/app/NotificationCompat$BubbleMetadata;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
