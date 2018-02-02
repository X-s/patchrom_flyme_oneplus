.class final Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;
.super Lcom/oneplus/gallery/media/BasicMediaList;
.source "BaseGroupMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/BaseGroupMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GroupMediaListImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/BaseGroupMedia;


# direct methods
.method public constructor <init>(Lcom/oneplus/gallery/media/BaseGroupMedia;Lcom/oneplus/gallery/media/MediaComparator;)V
    .locals 1

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;->this$0:Lcom/oneplus/gallery/media/BaseGroupMedia;

    const/4 v0, -0x1

    .line 45
    invoke-direct {p0, p2, v0}, Lcom/oneplus/gallery/media/BasicMediaList;-><init>(Lcom/oneplus/gallery/media/MediaComparator;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Lcom/oneplus/gallery/media/BasicMediaList;->release()V

    .line 52
    invoke-virtual {p0}, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;->clearMedia()V

    .line 53
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;->this$0:Lcom/oneplus/gallery/media/BaseGroupMedia;

    invoke-static {v0, p0}, Lcom/oneplus/gallery/media/BaseGroupMedia;->access$0(Lcom/oneplus/gallery/media/BaseGroupMedia;Lcom/oneplus/gallery/media/BaseGroupMedia$GroupMediaListImpl;)V

    .line 54
    return-void
.end method
