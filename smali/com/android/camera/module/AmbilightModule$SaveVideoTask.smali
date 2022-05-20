.class public final Lcom/android/camera/module/AmbilightModule$SaveVideoTask;
.super Ljava/lang/Object;
.source "AmbilightModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/AmbilightModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SaveVideoTask"
.end annotation


# instance fields
.field public contentValues:Landroid/content/ContentValues;

.field public uri:Landroid/net/Uri;

.field public videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/camera/module/AmbilightModule$SaveVideoTask;->videoPath:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/android/camera/module/AmbilightModule$SaveVideoTask;->contentValues:Landroid/content/ContentValues;

    .line 4
    iput-object p1, p0, Lcom/android/camera/module/AmbilightModule$SaveVideoTask;->uri:Landroid/net/Uri;

    return-void
.end method
