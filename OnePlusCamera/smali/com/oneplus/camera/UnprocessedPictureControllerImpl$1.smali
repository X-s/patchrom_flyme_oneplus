.class Lcom/oneplus/camera/UnprocessedPictureControllerImpl$1;
.super Ljava/lang/Object;
.source "UnprocessedPictureControllerImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/camera/media/MediaEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/UnprocessedPictureControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/UnprocessedPictureControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/UnprocessedPictureControllerImpl;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl$1;->this$0:Lcom/oneplus/camera/UnprocessedPictureControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 41
    check-cast p3, Lcom/oneplus/camera/media/MediaEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/UnprocessedPictureControllerImpl$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/camera/media/MediaEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/camera/media/MediaEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ">;",
            "Lcom/oneplus/camera/media/MediaEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/camera/media/MediaEventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/camera/UnprocessedPictureControllerImpl$1;->this$0:Lcom/oneplus/camera/UnprocessedPictureControllerImpl;

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getCaptureHandle()Lcom/oneplus/camera/CaptureHandle;

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/oneplus/camera/media/MediaEventArgs;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/camera/UnprocessedPictureControllerImpl;->-wrap0(Lcom/oneplus/camera/UnprocessedPictureControllerImpl;Lcom/oneplus/camera/CaptureHandle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 41
    return-void
.end method
