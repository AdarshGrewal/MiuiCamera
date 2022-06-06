.class public Lcom/xiaomi/asr/engine/ReEnrollmentAction$3;
.super Ljava/lang/Object;
.source "ReEnrollmentAction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/asr/engine/ReEnrollmentAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;


# direct methods
.method public constructor <init>(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$3;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "ReEnrollmentAction"

    const-string v1, "Start re-enroll with backup audio"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xiaomi/asr/engine/ReEnrollmentAction$3;->this$0:Lcom/xiaomi/asr/engine/ReEnrollmentAction;

    invoke-static {v1}, Lcom/xiaomi/asr/engine/ReEnrollmentAction;->access$000(Lcom/xiaomi/asr/engine/ReEnrollmentAction;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;

    sget-object v3, Lcom/xiaomi/asr/engine/record/AudioType;->PCM_16k:Lcom/xiaomi/asr/engine/record/AudioType;

    invoke-direct {v2, v3, v1}, Lcom/xiaomi/asr/engine/record/XSpeedStreamingFileRecorderSource;-><init>(Lcom/xiaomi/asr/engine/record/AudioType;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start re-enroll with backup audio: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->getInstance()Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;

    move-result-object v0

    const/16 v1, 0xbb8

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/asr/engine/impl/W2VPEngineImpl;->startEnrollmentStreamingFileRecorder(Lcom/xiaomi/asr/engine/record/AudioSource;I)V

    return-void
.end method
