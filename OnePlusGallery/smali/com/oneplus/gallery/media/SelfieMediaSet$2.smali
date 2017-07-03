.class Lcom/oneplus/gallery/media/SelfieMediaSet$2;
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

.field final synthetic val$result:[Z


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/SelfieMediaSet;[Z)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$2;->this$0:Lcom/oneplus/gallery/media/SelfieMediaSet;

    iput-object p2, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$2;->val$result:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;
    .param p2, "success"    # Z

    .prologue
    const/4 v1, 0x0

    .line 109
    if-nez p2, :cond_0

    .line 110
    iget-object v0, p0, Lcom/oneplus/gallery/media/SelfieMediaSet$2;->val$result:[Z

    aput-boolean v1, v0, v1

    .line 111
    :cond_0
    return-void
.end method

.method public onDeletionStarted(Lcom/oneplus/gallery/media/Media;)V
    .locals 0
    .param p1, "media"    # Lcom/oneplus/gallery/media/Media;

    .prologue
    .line 104
    return-void
.end method
