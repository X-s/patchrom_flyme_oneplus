.class public Lcom/oneplus/camera/CameraThread$ResourceIdTable;
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
    name = "ResourceIdTable"
.end annotation


# instance fields
.field public burstShutterSound:I

.field public photoShutterSound:I

.field public videoStartSound:I

.field public videoStopSound:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    .locals 2

    .prologue
    .line 440
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/CameraThread$ResourceIdTable;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 442
    :catch_0
    move-exception v0

    .line 444
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
    .line 412
    invoke-virtual {p0}, Lcom/oneplus/camera/CameraThread$ResourceIdTable;->clone()Lcom/oneplus/camera/CameraThread$ResourceIdTable;

    move-result-object v0

    return-object v0
.end method
