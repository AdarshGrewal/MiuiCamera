.class public Lcom/xiaomi/recordmediaprocess/MediaComposeFile;
.super Ljava/lang/Object;
.source "MediaComposeFile.java"


# static fields
.field public static TAG:Ljava/lang/String; = "MediaComposeFile"


# instance fields
.field public m_compose_file:J

.field public m_media_graph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->m_media_graph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    return-void
.end method

.method public static native BeginComposeJni()V
.end method

.method public static native CancelComposeJni()V
.end method

.method public static native ConstructMediaComposeFileJni(JIIIILcom/xiaomi/recordmediaprocess/EffectNotifier;)Z
.end method

.method public static native DestructMediaComposeFileJni()V
.end method

.method public static native SetComposeFileFdJni(Ljava/io/FileDescriptor;)V
.end method

.method public static native SetComposeFileNameJni(Ljava/lang/String;)V
.end method


# virtual methods
.method public BeginCompose()V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin mComposefile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->m_compose_file:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->BeginComposeJni()V

    return-void
.end method

.method public CancelCompose()V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel mComposefile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->m_compose_file:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->CancelComposeJni()V

    return-void
.end method

.method public ConstructMediaComposeFile(IIIILcom/xiaomi/recordmediaprocess/EffectNotifier;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->m_media_graph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->TAG:Ljava/lang/String;

    const-string p2, "effect graph is null, failed!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;->GetGraphLine()J

    move-result-wide v0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->ConstructMediaComposeFileJni(JIIIILcom/xiaomi/recordmediaprocess/EffectNotifier;)Z

    .line 4
    sget-object p1, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "construct compose file: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->m_compose_file:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public DestructMediaComposeFile()V
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destruct mComposefile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->m_compose_file:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->DestructMediaComposeFileJni()V

    return-void
.end method

.method public SetComposeFileFd(Ljava/io/FileDescriptor;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->SetComposeFileFdJni(Ljava/io/FileDescriptor;)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "SetComposeFileFd:: is null fd! "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public SetComposeFileName(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetComposeFileName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->SetComposeFileNameJni(Ljava/lang/String;)V

    return-void
.end method

.method public SetMediaEffectGraph(Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/recordmediaprocess/MediaComposeFile;->m_media_graph:Lcom/xiaomi/recordmediaprocess/MediaEffectGraph;

    return-void
.end method
