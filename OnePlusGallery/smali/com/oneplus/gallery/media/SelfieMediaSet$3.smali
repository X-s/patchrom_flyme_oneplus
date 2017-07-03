.class Lcom/oneplus/gallery/media/SelfieMediaSet$3;
.super Ljava/lang/Object;
.source "SelfieMediaSet.java"

# interfaces
.implements Lcom/oneplus/gallery/media/MediaDeletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/SelfieMediaSet;->delete(Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

.field final synthetic val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/SelfieMediaSet;Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;[Z)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$3;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$3;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    iput-object p3, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$3;->val$result:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V
    .locals 3
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "success"    # Z

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$3;->val$handle:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    iget-object v2, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$3;->val$result:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callOnDeletionCompleted(Z)V

    .line 123
    return-void
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 117
    return-void
.end method
