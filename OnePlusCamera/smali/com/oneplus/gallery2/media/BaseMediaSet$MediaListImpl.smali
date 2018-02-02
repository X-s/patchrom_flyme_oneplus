.class final Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;
.super Lcom/oneplus/gallery2/media/BaseMediaList;
.source "BaseMediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/BaseMediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaListImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/MediaComparator;I)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;

    .line 77
    invoke-direct {p0, p2, p3}, Lcom/oneplus/gallery2/media/BaseMediaList;-><init>(Lcom/oneplus/gallery2/media/MediaComparator;I)V

    .line 78
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->verifyAccess()V

    .line 85
    iget-object v0, p0, Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;->this$0:Lcom/oneplus/gallery2/media/BaseMediaSet;

    invoke-static {v0, p0}, Lcom/oneplus/gallery2/media/BaseMediaSet;->access$0(Lcom/oneplus/gallery2/media/BaseMediaSet;Lcom/oneplus/gallery2/media/BaseMediaSet$MediaListImpl;)V

    .line 86
    invoke-super {p0}, Lcom/oneplus/gallery2/media/BaseMediaList;->release()V

    .line 87
    return-void
.end method
