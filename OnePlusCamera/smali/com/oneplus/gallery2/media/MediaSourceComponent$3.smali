.class Lcom/oneplus/gallery2/media/MediaSourceComponent$3;
.super Ljava/lang/Object;
.source "MediaSourceComponent.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaSourceComponent;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<TTSource;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaSourceComponent;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaSourceComponent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent$3;->this$0:Lcom/oneplus/gallery2/media/MediaSourceComponent;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/oneplus/gallery2/media/MediaSource;

    invoke-virtual {p0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent$3;->onComponentFound(Lcom/oneplus/gallery2/media/MediaSource;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/gallery2/media/MediaSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTSource;)V"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent$3;->this$0:Lcom/oneplus/gallery2/media/MediaSourceComponent;

    invoke-static {v0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->access$0(Lcom/oneplus/gallery2/media/MediaSourceComponent;Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 174
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSourceComponent$3;->this$0:Lcom/oneplus/gallery2/media/MediaSourceComponent;

    invoke-virtual {v0, p1}, Lcom/oneplus/gallery2/media/MediaSourceComponent;->onBindToMediaSource(Lcom/oneplus/gallery2/media/MediaSource;)V

    .line 175
    return-void
.end method
