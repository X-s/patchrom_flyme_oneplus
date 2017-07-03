.class final Lcom/oneplus/gallery2/media/MediaSetList$1;
.super Lcom/oneplus/gallery2/media/BaseMediaSetList;
.source "MediaSetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaSetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaSetComparator;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/gallery2/media/MediaSetComparator;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/oneplus/gallery2/media/BaseMediaSetList;-><init>(Lcom/oneplus/gallery2/media/MediaSetComparator;)V

    return-void
.end method
