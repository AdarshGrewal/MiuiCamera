.class public Lcom/android/camera/Thumbnail$Media;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Thumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Media"
.end annotation


# instance fields
.field public final dateTaken:J

.field public final height:I

.field public final id:J

.field public final isGif:Z

.field public final orientation:I

.field public final path:Ljava/lang/String;

.field public final uri:Landroid/net/Uri;

.field public final width:I


# direct methods
.method public constructor <init>(JIJLandroid/net/Uri;Ljava/lang/String;II)V
    .locals 11

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/android/camera/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(JIJLandroid/net/Uri;Ljava/lang/String;IIZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/android/camera/Thumbnail$Media;->id:J

    .line 4
    iput p3, p0, Lcom/android/camera/Thumbnail$Media;->orientation:I

    .line 5
    iput-wide p4, p0, Lcom/android/camera/Thumbnail$Media;->dateTaken:J

    .line 6
    iput-object p6, p0, Lcom/android/camera/Thumbnail$Media;->uri:Landroid/net/Uri;

    .line 7
    iput-object p7, p0, Lcom/android/camera/Thumbnail$Media;->path:Ljava/lang/String;

    .line 8
    iput p8, p0, Lcom/android/camera/Thumbnail$Media;->width:I

    .line 9
    iput p9, p0, Lcom/android/camera/Thumbnail$Media;->height:I

    .line 10
    iput-boolean p10, p0, Lcom/android/camera/Thumbnail$Media;->isGif:Z

    return-void
.end method
