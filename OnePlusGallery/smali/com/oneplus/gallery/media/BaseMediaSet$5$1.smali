.class Lcom/oneplus/gallery/media/BaseMediaSet$5$1;
.super Ljava/lang/Object;
.source "BaseMediaSet.java"

# interfaces
.implements Lcom/oneplus/base/OperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/media/BaseMediaSet$5;->onDeletionCompleted(Lcom/oneplus/gallery/media/Media;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/OperationCallback",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/gallery/media/BaseMediaSet$5;

.field final synthetic val$media:Lcom/oneplus/gallery/media/Media;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/media/BaseMediaSet$5;Lcom/oneplus/gallery/media/Media;)V
    .locals 0

    .prologue
    .line 568
    iput-object p1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5$1;->this$1:Lcom/oneplus/gallery/media/BaseMediaSet$5;

    iput-object p2, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5$1;->val$media:Lcom/oneplus/gallery/media/Media;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 585
    return-void
.end method

.method public onCompleted(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "hasChanged"    # Ljava/lang/Boolean;

    .prologue
    .line 576
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5$1;->this$1:Lcom/oneplus/gallery/media/BaseMediaSet$5;

    iget-object v0, v0, Lcom/oneplus/gallery/media/BaseMediaSet$5;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    iget-object v1, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5$1;->val$media:Lcom/oneplus/gallery/media/Media;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery/media/BaseMediaSet;->removeMediaFromActiveMediaLists(Lcom/oneplus/gallery/media/Media;)V

    .line 579
    iget-object v0, p0, Lcom/oneplus/gallery/media/BaseMediaSet$5$1;->this$1:Lcom/oneplus/gallery/media/BaseMediaSet$5;

    iget-object v0, v0, Lcom/oneplus/gallery/media/BaseMediaSet$5;->this$0:Lcom/oneplus/gallery/media/BaseMediaSet;

    invoke-virtual {v0}, Lcom/oneplus/gallery/media/BaseMediaSet;->updateCoverHashCodeDelayed()V

    .line 581
    :cond_0
    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 568
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/gallery/media/BaseMediaSet$5$1;->onCompleted(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onStarted(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Object;

    .prologue
    .line 571
    return-void
.end method
