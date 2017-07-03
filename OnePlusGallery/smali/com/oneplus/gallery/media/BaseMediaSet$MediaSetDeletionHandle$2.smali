.class Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$2;
.super Ljava/lang/Object;
.source "BaseMediaSet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callOnDeletionStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$2;->this$1:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$2;->this$1:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    iget-object v0, v0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->callback:Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle$2;->this$1:Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;

    iget-object v1, v1, Lcom/oneplus/gallery/media/BaseMediaSet$MediaSetDeletionHandle;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    invoke-interface {v0, v1}, Lcom/oneplus/gallery/media/MediaSet$DeletionCallback;->onDeletionStarted(Lcom/oneplus/gallery/media/MediaSet;)V

    .line 274
    return-void
.end method
