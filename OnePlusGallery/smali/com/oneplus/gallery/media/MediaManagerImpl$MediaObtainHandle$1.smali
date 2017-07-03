.class Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle$1;
.super Ljava/lang/Object;
.source "MediaManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callOnObtained(JLcom/oneplus/gallery/media/Media;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

.field final synthetic val$id:J

.field final synthetic val$media:Lcom/oneplus/gallery/media/Media;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;JLcom/oneplus/gallery/media/Media;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    iput-wide p2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle$1;->val$id:J

    iput-object p4, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle$1;->val$media:Lcom/oneplus/gallery/media/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 781
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle$1;->this$1:Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle;->callback:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/gallery/media/MediaObtainCallback;

    iget-wide v2, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle$1;->val$id:J

    iget-object v1, p0, Lcom/oneplus/gallery/media/MediaManagerImpl$MediaObtainHandle$1;->val$media:Lcom/oneplus/gallery/media/Media;

    invoke-interface {v0, v2, v3, v1}, Lcom/oneplus/gallery/media/MediaObtainCallback;->onObtained(JLcom/oneplus/gallery/media/Media;)V

    .line 783
    :cond_0
    return-void
.end method
