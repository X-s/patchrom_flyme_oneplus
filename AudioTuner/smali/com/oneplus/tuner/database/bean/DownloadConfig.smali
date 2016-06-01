.class public Lcom/oneplus/tuner/database/bean/DownloadConfig;
.super Ljava/lang/Object;
.source "DownloadConfig.java"


# instance fields
.field configId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigId()I
    .locals 1

    .prologue
    .line 8
    iget v0, p0, Lcom/oneplus/tuner/database/bean/DownloadConfig;->configId:I

    return v0
.end method

.method public setConfigId(I)V
    .locals 0
    .param p1, "configId"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/oneplus/tuner/database/bean/DownloadConfig;->configId:I

    .line 13
    return-void
.end method
