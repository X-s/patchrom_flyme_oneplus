.class public abstract Lcom/oneplus/widget/FilmstripView$ScrollListener;
.super Ljava/lang/Object;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ScrollListener"
.end annotation


# instance fields
.field isScrollStartedCalled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentItemChanged(II)V
    .locals 0
    .param p1, "prevPosition"    # I
    .param p2, "position"    # I

    .prologue
    .line 287
    return-void
.end method

.method public onItemSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 294
    return-void
.end method

.method public onOverScroll(Z)V
    .locals 0
    .param p1, "atFirstItem"    # Z

    .prologue
    .line 301
    return-void
.end method

.method public onScrollStarted()V
    .locals 0

    .prologue
    .line 307
    return-void
.end method

.method public onScrollStopped()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method
