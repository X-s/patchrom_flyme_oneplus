.class Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$1;
.super Landroid/os/Handler;
.source "MediaSharingManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$1;->this$0:Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;

    .line 251
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$1;->this$0:Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;

    invoke-static {v0, p1}, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->access$0(Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;Landroid/os/Message;)V

    .line 257
    return-void
.end method
