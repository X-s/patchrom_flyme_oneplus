.class public abstract Lcom/oneplus/camera/InvalidMode;
.super Lcom/oneplus/base/BasicBaseObject;
.source "InvalidMode.java"

# interfaces
.implements Lcom/oneplus/camera/Mode;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/oneplus/camera/Mode",
        "<*>;>",
        "Lcom/oneplus/base/BasicBaseObject;",
        "Lcom/oneplus/camera/Mode",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lcom/oneplus/camera/InvalidMode;, "Lcom/oneplus/camera/InvalidMode<TT;>;"
    invoke-direct {p0}, Lcom/oneplus/base/BasicBaseObject;-><init>()V

    return-void
.end method


# virtual methods
.method public enter(Lcom/oneplus/camera/Mode;I)Z
    .locals 1
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lcom/oneplus/camera/InvalidMode;, "Lcom/oneplus/camera/InvalidMode<TT;>;"
    .local p1, "prevMode":Lcom/oneplus/camera/Mode;, "TT;"
    const/4 v0, 0x0

    return v0
.end method

.method public exit(Lcom/oneplus/camera/Mode;I)V
    .locals 0
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p0, "this":Lcom/oneplus/camera/InvalidMode;, "Lcom/oneplus/camera/InvalidMode<TT;>;"
    .local p1, "nextMode":Lcom/oneplus/camera/Mode;, "TT;"
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Lcom/oneplus/camera/InvalidMode;, "Lcom/oneplus/camera/InvalidMode<TT;>;"
    const-string v0, "(Invalid)"

    return-object v0
.end method
