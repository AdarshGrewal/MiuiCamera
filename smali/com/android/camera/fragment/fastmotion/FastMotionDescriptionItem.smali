.class public Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;
.super Ljava/lang/Object;
.source "FastMotionDescriptionItem.java"


# instance fields
.field public mIsVideo:Z

.field public mType:Ljava/lang/String;

.field public mTypeDesc:Ljava/lang/String;

.field public mVideoCover:I

.field public mVideoDesc:Ljava/lang/String;

.field public mVideoId:I


# direct methods
.method public constructor <init>(ZILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mIsVideo:Z

    .line 3
    iput p2, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mVideoId:I

    .line 4
    iput-object p3, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mVideoDesc:Ljava/lang/String;

    .line 5
    iput p4, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mVideoCover:I

    .line 6
    iput-object p5, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mType:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/android/camera/fragment/fastmotion/FastMotionDescriptionItem;->mTypeDesc:Ljava/lang/String;

    return-void
.end method
