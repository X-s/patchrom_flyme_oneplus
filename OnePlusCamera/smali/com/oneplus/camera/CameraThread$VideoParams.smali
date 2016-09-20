.class public Lcom/oneplus/camera/CameraThread$VideoParams;
.super Ljava/lang/Object;
.source "CameraThread.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/CameraThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoParams"
.end annotation


# instance fields
.field public maxDurationSeconds:J

.field public maxFileSize:J

.field public resolution:Lcom/oneplus/camera/media/Resolution;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/media/Resolution;)V
    .locals 2
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    const-wide/16 v0, -0x1

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-wide v0, p0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxDurationSeconds:J

    .line 462
    iput-wide v0, p0, Lcom/oneplus/camera/CameraThread$VideoParams;->maxFileSize:J

    .line 474
    iput-object p1, p0, Lcom/oneplus/camera/CameraThread$VideoParams;->resolution:Lcom/oneplus/camera/media/Resolution;

    .line 475
    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/camera/CameraThread$VideoParams;
    .locals 2

    .prologue
    .line 483
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CameraThread$VideoParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 485
    :catch_0
    move-exception v0

    .line 487
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread$VideoParams;->clone()Lcom/oneplus/camera/CameraThread$VideoParams;

    move-result-object v0

    return-object v0
.end method
