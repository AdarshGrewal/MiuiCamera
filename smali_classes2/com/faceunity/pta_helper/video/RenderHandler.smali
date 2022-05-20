.class public final Lcom/faceunity/pta_helper/video/RenderHandler;
.super Ljava/lang/Object;
.source "RenderHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:Landroid/opengl/EGLContext;

.field public d:Z

.field public e:Landroid/view/Surface;

.field public f:I

.field public g:[F

.field public h:[F

.field public i:Z

.field public j:Z

.field public k:I

.field public l:Lcom/faceunity/pta_helper/a/a/f;

.field public m:Lcom/faceunity/pta_helper/a/a/b;

.field public n:Lcom/faceunity/pta_helper/a/a/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/faceunity/pta_helper/video/RenderHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/faceunity/pta_helper/video/RenderHandler;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 3
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->g:[F

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->h:[F

    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->l:Lcom/faceunity/pta_helper/a/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/f;->d()V

    .line 3
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->l:Lcom/faceunity/pta_helper/a/a/f;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->n:Lcom/faceunity/pta_helper/a/a/e;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/e;->c()V

    .line 6
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->n:Lcom/faceunity/pta_helper/a/a/e;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->m:Lcom/faceunity/pta_helper/a/a/b;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/b;->a()V

    .line 9
    iput-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->m:Lcom/faceunity/pta_helper/a/a/b;

    :cond_2
    return-void
.end method

.method public static final createHandler(Ljava/lang/String;)Lcom/faceunity/pta_helper/video/RenderHandler;
    .locals 4

    .line 1
    new-instance v0, Lcom/faceunity/pta_helper/video/RenderHandler;

    invoke-direct {v0}, Lcom/faceunity/pta_helper/video/RenderHandler;-><init>()V

    .line 2
    iget-object v1, v0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 3
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/faceunity/pta_helper/video/RenderHandler;->a:Ljava/lang/String;

    :goto_0
    invoke-direct {v2, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    iget-object p0, v0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :catch_0
    :try_start_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public final draw(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->g:[F

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->h:[F

    invoke-virtual {p0, p1, v0, v1}, Lcom/faceunity/pta_helper/video/RenderHandler;->draw(I[F[F)V

    return-void
.end method

.method public final draw(I[F)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->h:[F

    invoke-virtual {p0, p1, p2, v0}, Lcom/faceunity/pta_helper/video/RenderHandler;->draw(I[F[F)V

    return-void
.end method

.method public final draw(I[F[F)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 5
    :cond_0
    iput p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->f:I

    .line 6
    iput-object p2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->g:[F

    .line 7
    iput-object p3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->h:[F

    .line 8
    iget p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->k:I

    .line 9
    iget-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 10
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final isValid()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->e:Landroid/view/Surface;

    instance-of v1, v1, Landroid/view/Surface;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->e:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    .line 4
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->i:Z

    .line 3
    iput v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->k:I

    .line 4
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 6
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_1
    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    monitor-exit v2

    goto/16 :goto_2

    .line 8
    :cond_1
    iget-boolean v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->i:Z

    if-eqz v0, :cond_2

    .line 9
    iput-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->i:Z

    .line 10
    invoke-direct {p0}, Lcom/faceunity/pta_helper/video/RenderHandler;->a()V

    .line 11
    new-instance v0, Lcom/faceunity/pta_helper/a/a/b;

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->c:Landroid/opengl/EGLContext;

    invoke-direct {v0, v4, v3}, Lcom/faceunity/pta_helper/a/a/b;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->m:Lcom/faceunity/pta_helper/a/a/b;

    .line 12
    new-instance v0, Lcom/faceunity/pta_helper/a/a/f;

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->m:Lcom/faceunity/pta_helper/a/a/b;

    iget-object v5, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->e:Landroid/view/Surface;

    invoke-direct {v0, v4, v5}, Lcom/faceunity/pta_helper/a/a/f;-><init>(Lcom/faceunity/pta_helper/a/a/b;Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->l:Lcom/faceunity/pta_helper/a/a/f;

    .line 13
    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/c;->b()V

    .line 14
    new-instance v0, Lcom/faceunity/pta_helper/a/b;

    invoke-direct {v0}, Lcom/faceunity/pta_helper/a/b;-><init>()V

    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->n:Lcom/faceunity/pta_helper/a/a/e;

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->e:Landroid/view/Surface;

    .line 16
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 17
    :cond_2
    iget v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->k:I

    if-lez v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    .line 18
    iget v4, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->k:I

    sub-int/2addr v4, v3

    iput v4, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->k:I

    .line 19
    :cond_4
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->m:Lcom/faceunity/pta_helper/a/a/b;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->f:I

    if-lez v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->l:Lcom/faceunity/pta_helper/a/a/f;

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/c;->b()V

    const/4 v0, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    invoke-static {v2, v2, v0, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 23
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 24
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->n:Lcom/faceunity/pta_helper/a/a/e;

    iget v2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->f:I

    iget-object v3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->g:[F

    iget-object v4, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->h:[F

    invoke-virtual {v0, v2, v3, v4}, Lcom/faceunity/pta_helper/a/a/e;->a(I[F[F)V

    .line 25
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->l:Lcom/faceunity/pta_helper/a/a/f;

    invoke-virtual {v0}, Lcom/faceunity/pta_helper/a/a/c;->c()Z

    goto :goto_0

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 27
    :try_start_2
    iget-object v2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    :try_start_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 29
    :catch_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    :goto_2
    iget-object v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_4
    iput-boolean v3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    .line 32
    invoke-direct {p0}, Lcom/faceunity/pta_helper/video/RenderHandler;->a()V

    .line 33
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 34
    monitor-exit v1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 35
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :catchall_2
    move-exception v0

    .line 36
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catchall_3
    move-exception v1

    .line 37
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method public final setEglContext(Landroid/opengl/EGLContext;Landroid/view/Surface;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->j:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->c:Landroid/opengl/EGLContext;

    .line 4
    iput-object p2, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->e:Landroid/view/Surface;

    .line 5
    iput-boolean p3, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->d:Z

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->i:Z

    .line 7
    iget-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->g:[F

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 8
    iget-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->h:[F

    invoke-static {p1, p2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 9
    iget-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    :try_start_1
    iget-object p1, p0, Lcom/faceunity/pta_helper/video/RenderHandler;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
