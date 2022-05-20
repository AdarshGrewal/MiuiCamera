.class public Lcom/android/camera/db/DbRepository$DbRepositoryContainer;
.super Ljava/lang/Object;
.source "DbRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/db/DbRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbRepositoryContainer"
.end annotation


# static fields
.field public static sInstance:Lcom/android/camera/db/DbRepository;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/camera/db/DbRepository;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/db/DbRepository;-><init>(Lcom/android/camera/db/DbRepository$1;)V

    sput-object v0, Lcom/android/camera/db/DbRepository$DbRepositoryContainer;->sInstance:Lcom/android/camera/db/DbRepository;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100()Lcom/android/camera/db/DbRepository;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/camera/db/DbRepository$DbRepositoryContainer;->sInstance:Lcom/android/camera/db/DbRepository;

    return-object v0
.end method
