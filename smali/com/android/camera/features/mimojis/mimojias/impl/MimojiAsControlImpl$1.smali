.class public Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$1;
.super Ljava/lang/Object;
.source "MimojiAsControlImpl.java"

# interfaces
.implements Lcom/arcsoft/avatar2/extrascene/ExtraSceneEngine$AvatarExtraSceneTriggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;-><init>(Lcom/android/camera/ActivityBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl$1;->this$0:Lcom/android/camera/features/mimojis/mimojias/impl/MimojiAsControlImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtraSceneTrigger(Ljava/lang/String;I)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/statistic/CameraStatUtils;->trackMimojiTrigger(Ljava/lang/String;)V

    return-void
.end method
