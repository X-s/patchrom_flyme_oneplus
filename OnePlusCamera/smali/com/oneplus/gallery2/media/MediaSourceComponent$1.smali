.class Lcom/oneplus/gallery2/media/MediaSourceComponent$1;
.super Lcom/oneplus/gallery2/media/MediaChangeCallback;
.source "MediaSourceComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaSourceComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaSourceComponent;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaSourceComponent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent$1;->this$0:Lcom/oneplus/gallery2/media/MediaSourceComponent;

    .line 22
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaCreated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent$1;->this$0:Lcom/oneplus/gallery2/media/MediaSourceComponent;

    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onMediaCreated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 28
    return-void
.end method

.method public onMediaDeleted(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent$1;->this$0:Lcom/oneplus/gallery2/media/MediaSourceComponent;

    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onMediaDeleted(Lcom/oneplus/gallery2/media/Media;I)V

    .line 34
    return-void
.end method

.method public onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent$1;->this$0:Lcom/oneplus/gallery2/media/MediaSourceComponent;

    invoke-virtual {v0, p2, p3}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onMediaUpdated(Lcom/oneplus/gallery2/media/Media;I)V

    .line 40
    return-void
.end method
