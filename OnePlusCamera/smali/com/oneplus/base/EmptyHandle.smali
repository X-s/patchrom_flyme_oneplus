.class public final Lcom/oneplus/base/EmptyHandle;
.super Lcom/oneplus/base/Handle;
.source "EmptyHandle.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 20
    return-void
.end method
