.class public abstract Lcom/oneplus/camera/CameraApplication;
.super Lcom/oneplus/base/BaseApplication;
.source "CameraApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/oneplus/base/BaseApplication;-><init>()V

    return-void
.end method

.method public static current()Lcom/oneplus/camera/CameraApplication;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/oneplus/base/BaseApplication;->current()Lcom/oneplus/base/BaseApplication;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/CameraApplication;

    return-object v0
.end method
