.class public Lcom/oneplus/screenshot/longshot/reject/ByDragScreen;
.super Lcom/oneplus/screenshot/longshot/reject/Reject;
.source "ByDragScreen.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/reject/Reject;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f0c000b

    return v0
.end method

.method public isReject()Z
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/oneplus/view/OneplusScreenDragUtil;->isOffsetState()Z

    move-result v0

    return v0
.end method
