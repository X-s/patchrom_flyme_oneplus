.class final Lcom/oneplus/widget/FilmstripView$ItemContainerView;
.super Landroid/widget/FrameLayout;
.source "FilmstripView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/FilmstripView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ItemContainerView"
.end annotation


# instance fields
.field public final itemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/widget/FilmstripView$ItemInfo;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemInfo"    # Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .prologue
    .line 327
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 328
    iput-object p2, p0, Lcom/oneplus/widget/FilmstripView$ItemContainerView;->itemInfo:Lcom/oneplus/widget/FilmstripView$ItemInfo;

    .line 325
    return-void
.end method
