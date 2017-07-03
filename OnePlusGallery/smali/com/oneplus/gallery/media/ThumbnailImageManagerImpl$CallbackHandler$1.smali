.class Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler$1;
.super Ljava/lang/Object;
.source "ThumbnailImageManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler$1;->this$1:Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;

    # invokes: Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;->performCallbacks()V
    invoke-static {v0}, Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;->access$500(Lcom/oneplus/gallery/media/ThumbnailImageManagerImpl$CallbackHandler;)V

    .line 126
    return-void
.end method
