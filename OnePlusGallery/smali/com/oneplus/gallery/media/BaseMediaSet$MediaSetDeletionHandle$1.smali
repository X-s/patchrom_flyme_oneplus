.class Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$1;
.super Ljava/lang/Object;
.source "BaseMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callOnDeletionCompleted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;Z)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$1;->this$1:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    iput-boolean p2, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$1;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$1;->this$1:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$1;->this$1:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    iget-object v1, v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    iget-boolean v2, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$1;->val$success:Z

    invoke-interface {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;->onDeletionCompleted(Lcom/oneplus/gallery/media/MediaSet;Z)V

    .line 255
    return-void
.end method
