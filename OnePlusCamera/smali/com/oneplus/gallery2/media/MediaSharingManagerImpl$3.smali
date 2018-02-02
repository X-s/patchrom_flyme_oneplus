.class Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$3;
.super Lcom/oneplus/base/Handle;
.source "MediaSharingManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;->prepareSharing(Lcom/oneplus/gallery2/media/Media;Lcom/oneplus/gallery2/media/PrepareSharingCallback;I)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;

.field private final synthetic val$isCanceled:Lcom/oneplus/base/Ref;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;Ljava/lang/String;Lcom/oneplus/base/Ref;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$3;->this$0:Lcom/oneplus/gallery2/media/MediaSharingManagerImpl;

    iput-object p3, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$3;->val$isCanceled:Lcom/oneplus/base/Ref;

    .line 431
    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2

    .prologue
    .line 436
    iget-object v0, p0, Lcom/oneplus/gallery2/media/MediaSharingManagerImpl$3;->val$isCanceled:Lcom/oneplus/base/Ref;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oneplus/base/Ref;->set(Ljava/lang/Object;)V

    .line 437
    return-void
.end method
