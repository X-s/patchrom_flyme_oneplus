.class Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$1;
.super Lcom/oneplus/gallery2/media/MediaChangeCallback;
.source "MultiMediaSourcesComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$1;->this$0:Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;

    .line 35
    invoke-direct {p0}, Lcom/oneplus/gallery2/media/MediaChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaCreated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$1;->this$0:Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->onMediaCreated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V

    .line 41
    return-void
.end method

.method public onMediaDeleted(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$1;->this$0:Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->onMediaDeleted(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V

    .line 47
    return-void
.end method

.method public onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent$1;->this$0:Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/gallery2/media/MultiMediaSourcesComponent;->onMediaUpdated(Lcom/oneplus/gallery2/media/MediaSource;Lcom/oneplus/gallery2/media/Media;I)V

    .line 53
    return-void
.end method
